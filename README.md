## soy-latte

#Installation Dependency
yum install zlib-devel
yum install openjpeg-devel
yum install turbojpeg-devel
yum install libjpeg-devel
yum install gcc-devel
yum install libcc-devel
yum install libgccjit-devel
yum -y install gcc gcc-c++ kernel-devel python3-devel python-psycopg2
yum install git

#Create Virtual Python to use python3
cd /usr/local/src
python3 -m venv soylatte
source soylatte/bin/activate
pip install --upgrade setuptools
git clone https://github.com/stephenmcd/mezzanine.git
cd mezzanine
python setup.py install #Virtual python goes as python3
cp -p  /usr/local/src/mezzanine/mezzanine/bin/mezzanine_project.py  /usr/bin/mezzanine_project.py
chmod +x /usr/bin/mezzanine_project.py

#Create PJ
cd /opt
mezzanine_project soylatte

#Install Soylatte PJ
cd /opt
git clone

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
