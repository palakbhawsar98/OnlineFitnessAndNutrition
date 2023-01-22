FROM openjdk:8

COPY target/OnlineFitnessAndNutrition-0.0.1-SNAPSHOT.jar webapp.jar

ENTRYPOINT ["java","-jar","/webapp.jar"]
