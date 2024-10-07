FROM continuumio/miniconda3

WORKDIR /home/app

RUN apt-get update -y 
RUN apt-get install nano unzip curl -y

COPY requirements.txt /dependencies/requirements.txt
RUN pip install -r /dependencies/requirements.txt

COPY . /home/app

CMD fastapi run app.py --port $PORT
# CMD gunicorn app:app --bind 0.0.0.0:$PORT --worker-class uvicorn.workers.UvicornWorker 