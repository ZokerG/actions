# Usa una imagen base de OpenJDK 17
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR de la aplicación en el contenedor
COPY target/prueba-deploy-0.0.1-SNAPSHOT.jar /app/prueba-deploy-0.0.1-SNAPSHOT.jar

# Expone el puerto en el que la aplicación correrá
EXPOSE 8080

# Define el comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app/prueba-deploy-0.0.1-SNAPSHOT.jar"]
