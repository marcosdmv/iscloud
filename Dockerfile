FROM python:3.11.9-bookworm

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt

COPY app.py app.py
EXPOSE 5000
CMD ["python3" ,"-m", "flask", "run", "--host=0.0.0.0"]