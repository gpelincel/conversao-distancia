# Imagem base
FROM python:3.13.0
# Semelhante a um mkdir + cd
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . /app/
#Declarando q o container vai usar a porta 5000
EXPOSE 5000
#Só é executado na criação do container
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]