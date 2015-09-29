FROM tutum/lamp

RUN apt-get update && apt-get install wget
RUN echo "deb http://dl.ajaxplorer.info/repos/apt stable main" >> /etc/apt/sources.list
RUN echo "deb-src http://dl.ajaxplorer.info/repos/apt stable main" >> /etc/apt/sources.list

RUN wget -O - http://dl.ajaxplorer.info/repos/charles@ajaxplorer.info.gpg.key | apt-key add -
RUN apt-get update && apt-get install -y pydio
RUN cp /usr/share/doc/pydio/apache2.sample.conf /etc/apache2/sites-available/pydio.conf
RUN a2ensite pydio && a2enmod rewrite && php5enmod mcrypt

ADD ./create_mysql_admin_user.sh .
RUN chmod +x create_mysql_admin_user.sh
EXPOSE 80
CMD ["/run.sh"]
