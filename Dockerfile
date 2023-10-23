FROM openjdk:22-jdk-slim-bullseye
ENV PLANTUML_VERSION=1.2023.7
ENV LANG en_US.UTF-8
RUN \
  apt-get update && \
  apt-get -y install wget graphviz fontconfig && \
  wget "http://downloads.sourceforge.net/project/plantuml/${PLANTUML_VERSION}/plantuml.${PLANTUML_VERSION}.jar" -O plantuml.jar
RUN ["java", "-Djava.awt.headless=true", "-jar", "/plantuml.jar", "-version"]
RUN ["dot", "-version"]

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
