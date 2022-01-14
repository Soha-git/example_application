FROM python:3.9-alpine 

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY ./src .

EXPOSE 8080

ENTRYPOINT [ "python3", "service.py"]