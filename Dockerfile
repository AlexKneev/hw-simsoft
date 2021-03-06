FROM python:3.6-slim
COPY . /app
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./app.py" ]
