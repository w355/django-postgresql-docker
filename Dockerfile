FROM python:3.8

#Para que o python não gere arquivos .pyc
ENV PYTHONDONTWRITEBYTECODE 1  

#Para que as mensagens de log não ficarem armazenadas em bafet, seje apresentandas imediatamente.
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .