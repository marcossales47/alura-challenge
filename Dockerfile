#pull da imagem base
FROM python:3
#Variáveis de ambiente para criação do superuser necessário para o acesso à aplicação
ENV DJANGO_SUPERUSER_USERNAME=root
ENV DJANGO_SUPERUSER_PASSWORD=1234
ENV DJANGO_SUPERUSER_EMAIL=teste123@teste.com.br
#Diretório principal
WORKDIR /app
#Cópia de todos os arquivos para o dir. de trab.
COPY . .
#Execução dos comandos (mesma layer de imagem)
RUN pip install --upgrade pip &&\
pip install -r requirements.txt &&\
python manage.py makemigrations &&\
python manage.py migrate &&\
python manage.py createsuperuser --noinput
#Exposição à porta 8000
EXPOSE 8000
#Comandos para quando o contaienr iniciar
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]
