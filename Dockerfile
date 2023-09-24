# Establece la imagen base
FROM ubuntu:latest

# Etiqueta para identificar al autor
LABEL author="Tu Nombre <tunombre@example.com>"

# Actualiza los paquetes del sistema y 
# instala un paquete adicional
RUN apt-get update && apt-get install -y \
    curl

# Copia un archivo desde el sistema local al contenedor
#COPY mi-archivo.txt /app/

# Establece el directorio de trabajo
WORKDIR /app

# Ejecuta un comando durante la construcción de la imagen
RUN echo "Este es un ejemplo de Dockerfile."

# Expone un puerto en el contenedor
EXPOSE 8080

# Define el comando predeterminado para ejecutar el contenedor
CMD ["echo", "¡Hola, Docker!"]

