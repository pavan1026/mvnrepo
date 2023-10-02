FROM openjdk:8  
EXPOSE 8080  
ADD target/webpavanapp-1.0-SNAPSHOT.jar docker-image.jar 
CMD ["java", "-jar", "/docker-image.jar"]  
