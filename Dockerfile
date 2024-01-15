# Utilizamos la imagen oficial de Nginx como base
FROM nginx

# Copiamos nuestro archivo index.html al directorio de trabajo de Nginx
COPY index.html /usr/share/nginx/html
COPY docker.png /usr/share/nginx/html

# Exponemos el puerto 80 para que la aplicación sea accesible desde fuera del contenedor
EXPOSE 80

# Especificamos el comando a ejecutar al arrancar el contenedor
CMD ["nginx", "-g", "daemon off;"]
