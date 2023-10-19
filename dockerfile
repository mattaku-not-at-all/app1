FROM python:3.8.17-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && \
    apt-get -y upgrade && \
    pip install -r requirements.txt

EXPOSE 8501

COPY . /app

#ENTRYPOINT ["streamlit", "run"]

#CMD ["app.py"]
