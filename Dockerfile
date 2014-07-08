FROM dkhroad/base:ubuntu-12.04
MAINTAINER Devinder Khroad "dkhroad@gmail.com"
RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless wget
RUN wget http://maven.jenkins-ci.org/content/repositories/releases/org/jenkins-ci/plugins/swarm-client/1.15/swarm-client-1.15-jar-with-dependencies.jar -O /usr/local/bin/swarm-client.jar

ENTRYPOINT ["/sbin/my_init","--","java", "-jar", "/usr/local/bin/swarm-client.jar"]
CMD []
