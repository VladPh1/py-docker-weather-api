FROM python:3.11-slim
LABEL maintainer=freepgvlad@gmail.com

ENV PYTHOUNNBUFFERED=1

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "-u", "app/main.py"]
