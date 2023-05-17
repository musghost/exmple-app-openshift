FROM python:3.9
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
# ENV FLASK_ENV=production hallo
CMD ["python", "app.py"]
