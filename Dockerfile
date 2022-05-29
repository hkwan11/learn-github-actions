FROM python:3.8-alpine
RUN mkdir src/app
COPY ./src src/app
WORKDIR src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
CMD ["python", "app.py"]