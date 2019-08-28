FROM gradle:5.6-jdk11

EXPOSE 4567
COPY build/libs/subtract.jar subtract.jar

CMD ["java", "-jar", "subtract.jar"]

