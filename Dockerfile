FROM apache/airflow:2.9.1
COPY requirements.txt /requirements.txt
USER root
RUN apt-get update && apt-get install -y build-essential
USER airflow
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /requirements.txt