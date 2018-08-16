### soy-latte
====

Cloud Service Guideline Website

## Description  
Website that provides know-how to utilize Cloud Service such as AWS, GCP, Azure etc..

## Demo  
Coming soon

## VS.   
Coming soon

## Requirement  
Coming soon

## Usage  
Coming soon

## Install  
#via Docker (recommended)
apt-get update && apt-get install -y git  
pip install psycopg2-binary mezzanine gunicorn  

#to Server directly
yum -y install zlib-devel openjpeg-devel turbojpeg-devel libjpeg-devel gcc-devel libcc-devel libgccjit-devel  
yum -y install gcc gcc-c++ kernel-devel python3-devel python-psycopg2 git  
cd /usr/local/src  
python3 -m venv soylatte  
source soylatte/bin/activate  
pip install --upgrade setuptools  
pip install psycopg2-binary  
git clone https://github.com/stephenmcd/mezzanine.git  
cd mezzanine  
python setup.py install #Virtual python goes as python3  
#cp -p  /usr/local/src/mezzanine/mezzanine/bin/mezzanine_project.py  /usr/bin/mezzanine_project.py  
chmod +x /usr/bin/mezzanine_project.py  
cd /opt  
mezzanine_project soylatte  
cd /opt  
git clone  

## Contribution  
Everybody who sees this

## Licence
[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

## Author
[tcnksm](https://github.com/tcnksm)

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
