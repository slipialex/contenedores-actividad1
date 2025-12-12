FROM php:8.2-apache

# Activar mod_rewrite si lo necesitas
RUN a2enmod rewrite

# Definir el directorio raíz del servidor
WORKDIR /var/www/html

# Crear archivo index.php automáticamente
RUN echo "<?php echo 'App PHP creada automáticamente en Docker. Alejandro Gonzalez Ruiz'; ?>" > index.php

# Exponer el puerto 80 (Apache)
EXPOSE 80


# Apache arranca automáticamente en esta imagen, así que no necesitas CMD extra
