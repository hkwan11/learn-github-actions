FROM python:3.8-alpine
RUN mkdir /usr/src/app
COPY ./src /usr/src/app
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
CMD ["python", "app.py"]