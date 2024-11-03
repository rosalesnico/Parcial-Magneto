# Hace un build con la imagen de alpine
FROM alpine:latest as build

# Actualiza el índice de los repositorios de alpine
RUN apk update

# Instala OpenJDK 17
RUN apk add openjdk17

# Copia todo el contenido del directorio al contenedor
COPY . .

# Da permisos de ejecución al script de Gradle para poder ejecutar el build
RUN chmod +x ./gradlew

# Ejecuta el comando de Gradle para generar el archivo JAR del proyecto Spring Boot
RUN ./gradlew bootJar --no-daemon

# Etapa de producción utilizando una imagen ligera de OpenJDK en Alpine
FROM openjdk:17-alpine

# Expone el puerto 9000 para que la aplicación Spring Boot esté disponible en este puerto
EXPOSE 9000

COPY --from=build ./build/libs/*.jar ./app.jar 

# Comando de entrada que ejecuta la aplicación Java usando el archivo JAR copiado
ENTRYPOINT ["java", "-jar", "app.jar"]
