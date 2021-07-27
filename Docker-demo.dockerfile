
FROM centos:7

# Description
LABEL maintainer="Learning Automation is Awesome"
 

RUN yum -y update && yum clean all


RUN yum -y install httpd


COPY index.html /var/www/html/


ENTRYPOINT [ "/usr//sbin/httpd" ]


CMD [ "-D", "FOREGROUND" ]
