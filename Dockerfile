FROM python:3.11

#WORKDIR /new_project

COPY ./main_app .

COPY ./requirements.txt .

EXPOSE 8000

RUN pip install -r requirements.txt &&\
    apt update && apt install libgl1-mesa-glx -y
