<p align="center">
   <img width="180" src="https://www.docker.com/app/uploads/2024/01/icon-docker-square.svg">
  </p>


# Despliegue de una página web usando Dockerfile
**dockerfile-httpd-demo** es una applicacion pensada para crear una imagen customizada y enviarla a un repositorio de imagens como **Quay**.
<p align="left">
   <img src="https://img.shields.io/badge/STATUS-%20COMPLETADO-green">
   </p>


## Instalación
Sigue los pasos a continuación para ejecutar la aplicación:
1. Clona el repositorio en tu entorno local
2. Situate en el directorio del repo
3. ejecuta el siguiente comando:
```
podman build -t <Image_name> <Path_Dockerfile>
```
4. Comprueba que la imagen se haya construido
```
podman image list
```
5. Ejecuta un contenedor utilizando la imagen contruida.
```
podman run -d --name httpd-demo -p 8080:8080 quay-test-httpd
```
⚠️ Nota: Se esta utilizando el puerto 8080, debido a que la imagen utilizada expone por default ese puerto.

6. Corrobora que el contenedor haya levantado correctamente
```
podman ps --all
```
7. Comprueba que la pagina responde por el puerto 8080
```
curl http://localhost:8080
```
8. Comprueba visualmente la pagina
```
http://localhost:8080
```

> ⚠️ *Para modificar la pagina solo basta con agregar tu propio index.html y los archivos necesarios en el directorio donde se encuentra el Dockerfile*

