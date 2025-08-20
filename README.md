<p align="left">
   <img width="180" src="https://argo-cd.readthedocs.io/en/stable/assets/logo.png">
  </p>


# Despliegue de una página web usando Argo y Pipelines
**ArgoCD-httpd_demo-noAuth** es una applicacion pensada para ejecutar dentro de **ArgoCD**.

## Instalación
Sigue los pasos a continuación para configurar y ejecutar la aplicación:
1. Dar de alta este repositorio en **ArgoCD**.
2. Crear una app eligiendo este repositorio como **source** y elegir el directorio **`deploy-argo`**. 
4. Copiar el **Image Repository** generado en la plataforma (OpenShift) y modificar el archivo **`Deployment y Pipeline`** con el valor correspondiente.  
5. Crear una app eligiendo este repositorio como **source** y elegir el directorio **`pipeline-config`**.  
6. Crear el **`PipelineRun`** del **Pipeline** generado y asignar en **`source`** el PVC creado.  
7. Visitar la URL generada.

> ⚠️ *Este ejemplo está pensado para un repositorio público, por lo que no se requiere un archivo de autenticación.*

