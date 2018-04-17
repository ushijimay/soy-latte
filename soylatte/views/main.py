from __future__ import unicode_literals
from future.builtins import super

from datetime import timedelta, datetime
from json import dumps
from django.contrib.auth.models import User
from django.contrib.messages import info, error
from django.contrib.auth.decorators import login_required
from django.forms.models import inlineformset_factory
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import get_object_or_404, redirect, render
from django.template.response import TemplateResponse
from django.utils.translation import ugettext_lazy as _
from django.utils.timezone import now
from django.views.decorators.csrf import csrf_protect
from django.views.generic import CreateView, UpdateView

from mezzanine.conf import settings
from mezzanine.generic.views import initial_validation
from mezzanine.utils.cache import add_cache_bypass
from mezzanine.utils.importing import import_dotted_path
from mezzanine.utils.views import set_cookie, is_spam
from mezzanine.accounts import get_profile_model
from notifications.signals import notify

from ..models.main import Blog

import omise

# Returns the name to be used for reverse profile lookups from the user
# object. That's "profile" for the ``drum.links.Profile``, but otherwise
# depends on the model specified in ``AUTH_PROFILE_MODULE``.
USER_PROFILE_RELATED_NAME = get_profile_model().user.field.related_query_name()

class ArticleCreate(CreateView):
    """
    Link creation view - assigns the user to the new link, as well
    as setting Mezzanine's ``gen_description`` attribute to ``False``,
    so that we can provide our own descriptions.
    """

    form_class = ArticleForm
    model = Article

    def form_valid(self, form):
        user_status = self.request.user.profile.relangprofile.customer_status
        if user_status == "STA":
            max_value = getattr(settings, "STANDARD_MAXIMUM", None)
            profile_user = self.request.user.profile.user
            current_month = datetime.now().month
            current_year = datetime.now().year
            current_value = Article.objects.filter(user=profile_user,publish_date__year=current_year,
                                                   publish_date__month=current_month).count()
            if current_value >= max_value:
                error(self.request, "Posting Too Many Blogs!!")
                return HttpResponseRedirect("/")
        hours = getattr(settings, "ALLOWED_DUPLICATE_LINK_HOURS", None)
        if hours and form.instance.link:
            lookup = {
                "link": form.instance.link,
                "publish_date__gt": now() - timedelta(hours=hours),
            }
            try:
                link = Blog.objects.get(**lookup)
            except Blog.DoesNotExist:
                pass
            else:
                error(self.request, "Blog exists")
                return redirect(link)
        form.instance.user = self.request.user
        form.instance.gen_description = False
        info(self.request, "Blog created")

        return super(BlogCreate, self).form_valid(form)

class BlogUpdate(UpdateView):
    """
    Link creation view - assigns the user to the new link, as well
    as setting Mezzanine's ``gen_description`` attribute to ``False``,
    so that we can provide our own descriptions.
    """

    form_class = BlogForm
    model = Blog
    template_name = "webapps/article_update.html"


    def form_valid(self, form):
        hours = getattr(settings, "ALLOWED_DUPLICATE_LINK_HOURS", None)
        form.instance.user = self.request.user
        form.instance.gen_description = False
        info(self.request, "Blog updated")
        return super(BlogUpdate, self).form_valid(form)



@csrf_protect
def upgrade_status(request, template="auth/upgrade_status.html", extra_context=None):
    if request.method == "POST":
        card_id = request.POST["omiseToken"]
        username = request.user.username
        users = User.objects.select_related(USER_PROFILE_RELATED_NAME)
        lookup = {"username__iexact": username, "is_active": True}
        profile_user = get_object_or_404(users, **lookup)
        customer_id = profile_user.profile.relangprofile.omise_customer_id
        omise.api_public = getattr(settings, "OMISE_PKEY", None)
        omise.api_secret = getattr(settings, "OMISE_SKEY", None)
        if omise.api_public and omise.api_secret and customer_id is not "":
            customer = omise.Customer.retrieve(customer_id)
            customer.update(
                card=card_id
            )
            omise.Schedule.create(
                every=1,
                period='month',
                on={
                    'weekday_of_month': '2nd_monday'
                },
                 end_date='2199-05-01',
                charge={
                    'customer': customer_id,
                    'amount': 500,
                    'description': 'Membership fee'
                }
            )
            profile_user.profile.relangprofile.customer_status= "Premium"
            profile_user.profile.relangprofile.save()
            info(request, _("Successfully Upgraded to Premium"))
    context = {"title": _("Upgrade")}
    context.update(extra_context or {})
    return TemplateResponse(request, template, context)


from django.db.models.signals import post_delete
from django.dispatch import receiver

@receiver(post_delete, sender=RelangProfile)
def user_postdelete(sender, instance, **kwargs):
        if sender.omise_customer_id:
            omise.api_public = getattr(settings, "OMISE_PKEY", None)
            omise.api_secret = getattr(settings, "OMISE_SKEY", None)
            try:
                customer = omise.Customer.retrieve(instance.omise_customer_id)
                if customer:
                    customer.destroy()
                    if customer.destroyed:
                        pass
            except:
                pass
