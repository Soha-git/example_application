FROM python:3.9-alpine 

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY ./src .

EXPOSE 5000

ENTRYPOINT [ "python3", "service.py"]