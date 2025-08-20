# Dockerfile
#imagen oficial de httpd por red hat
FROM registry.access.redhat.com/ubi8/httpd-24@sha256:371835d9fe6dc1e1c5bfd4f1e86fd6dcf93133e1f2a9f19be55e77f03be788b3

# Exponer el puerto 8080 (por defecto ya lo hace)
EXPOSE 8080

#Nos cambiamos al usuario root para copiar los archivos
USER 0

#Copiar archivos dentro de /var/www/html
COPY index.html /var/www/html/
COPY github_logo.png /var/www/html/


#Cambiar propietario del contenido
RUN chown -R 1001:0 /var/www/html

#Nos cambiamos a un usuario No ROOT
USER 1001

#Modificar el puerto por defecto de la imagen de red hat al puerto 80
#RUN sed -i 's/^Listen .*/Listen 80/' /etc/httpd/conf/httpd.conf

