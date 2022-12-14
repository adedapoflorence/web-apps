FROM ubuntu
RUN apt update
RUN apt install apache2 -y
WORKDIR /var/www/html
RUN wget https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip
RUN unzip 2129_crispy_kitchen.zip
RUN mv 2129_crispy_kitchen/* .
CMD apachectl -DFOREGROUND 

