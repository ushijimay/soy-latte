# soy-latte


## Edit Home to utilizing django template
    {% for page in page_branch %}
    {% if page.in_menu %}
                    {% if not page.parent %}
                    <a href="{% page.get_absolute_url %}">{{ page.title }}</a>
                    {% else %}
                    <span class="text-center">
                    <ul><a href="/aws/{% page.get_absolute_url %}/{{page.title}}/">{{page.title}}</a></ul>
                    </span>
                    {% endif %}
    {% endif %}
    {% endfor %}