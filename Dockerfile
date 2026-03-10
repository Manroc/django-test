FROM python:3.12.12-slim
WORKDIR /opt/django-app
COPY . .
ARG SECRET_KEY1
ENV SECRET_KEY1=${SECRET_KEY1}
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
