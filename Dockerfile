FROM ubuntu
RUN apt-get update
#RUN apt-get install -y --force-yes openjdk-7-jre-headless wget
RUN apt-get install -y tomcat7
ENV CATALINA_HOME /usr/share/tomcat7/
ENV CATALINA_BASE /var/lib/tomcat7/
ENV PATH $CATALINA_HOME/bin:$PATH
ADD target/EmployeeApplication.war /var/lib/tomcat7/webapps/EmployeeApplication.war
#ADD mysql-connector-java-3.1.14-bin.jar /var/lib/tomcat7/lib/ 
EXPOSE 8080
#CMD service tomcat7 start
CMD ["catalina.sh", "run"]
