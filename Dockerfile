FROM python:3.12.4-slim-bookworm

#Prevent Printing the pyc and Enable logs immediately
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5002


#  "Only in Dev Mode"    ENTRYPOINT [ "python", "app.py" ]

ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:5002", "app:app"]

CMD ["--workers", "2"]