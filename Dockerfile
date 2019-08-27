FROM gradle:5.6-jdk11

COPY build/libs/subtract.jar subtract.jar

CMD ["java", "-jar", "subtract.jar"]

