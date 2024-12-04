
FROM python:3.10-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

COPY requirements.txt ./

# Instala las dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
