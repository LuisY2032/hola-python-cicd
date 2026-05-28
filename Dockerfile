#1 Paso imagen base
FROM python:3.14.5-alpine

#2 crear el directorio de trabajo
WORKDIR /app

#3 Copiar las dependencias 
COPY requirements.txt /app

#4 Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

#5 copiar el todo hacia /directorio o .
COPY . /app

#4 ejecutar la aplicacion
CMD [ "python", "app.py" ]