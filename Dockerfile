FROM      maven
COPY      src src
COPY      pom.xml pom.xml
RUN       mvn package && mv target/shipping-1.0.jar shipping.jar
ENTRYPOINT [ "java", "-jar", "shipping.jar" ]
