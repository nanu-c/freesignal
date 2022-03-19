FROM ubuntu:20.04
LABEL maintainer="aaron@nanu-c.org"

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Vienna
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update
RUN apt-get install git wget -y

# --> Install java 1.17 <--
RUN apt-get -y upgrade
RUN apt-get install openjdk-17-jdk openjdk-17-jre -y
RUN echo "JAVA_HOME=\"/usr/lib/jvm/java-1.17.0-openjdk-amd64\"" >>  /etc/environment
RUN ["/bin/bash", "-c", "source /etc/environment"]
RUN echo "export JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64" >>  ~/.bashrc
RUN echo "export PATH=\$JAVA_HOME/bin:\$PATH" >>  ~/.bashrc
RUN ["/bin/bash", "-c", "source ~/.bashrc"]
RUN update-ca-certificates -f
RUN apt-get install --reinstall ca-certificates-java

# --> Install maven 3.8.5 <--
RUN apt-get install maven -y
RUN cd /usr/local && wget https://downloads.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.tar.gz
RUN cd /usr/local && tar xzf apache-maven-3.8.5-bin.tar.gz \ 
    && ln -s apache-maven-3.8.5 apache-maven
RUN echo "export JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64" >> /etc/profile.d/apache-maven.sh
RUN echo "export M2_HOME=/usr/local/apache-maven" >> /etc/profile.d/apache-maven.sh
RUN echo "export MAVEN_HOME=/usr/local/apache-maven" >> /etc/profile.d/apache-maven.sh
RUN echo "export PATH=\${M2_HOME}/bin:\${PATH}" >> /etc/profile.d/apache-maven.sh
RUN source /etc/profile.d/apache-maven.sh && mvn -version
RUN java -version

# COPY ./ssl /ssl

# --> Install Signal Server <--

COPY ./Signal-Server /Signal-Server
RUN source /etc/profile.d/apache-maven.sh && cd /Signal-Server && mvn -P exclude-abusive-message-filter -DskipTests -e install

COPY start.sh /start.sh

# --> Run server <--
EXPOSE 8080
EXPOSE 8081

CMD ["/bin/bash", "-c", "/start.sh"]