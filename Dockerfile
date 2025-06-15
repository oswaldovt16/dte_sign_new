FROM svfe/svfe-api-firmador:v20230109

# Crea la carpeta donde pondrás los archivos temporales
RUN mkdir /uploads

# Copia los certificados desde la carpeta temp del repo
COPY ./temp /uploads

# Expón el puerto que usa el firmador
EXPOSE 8113

# Comando para iniciar el servicio
CMD ["java", "-jar", "app.jar"]
