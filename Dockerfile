FROM python:2.7.14

COPY requirements.txt .
COPY hello_world.py .
RUN mkdir /opt/hello_world/
RUN pip install --upgrade pip==20.2.3 \
    && pip install --no-cache-dir -r requirements.txt 

EXPOSE 80
WORKDIR /opt/hello_world/

CMD [ "./hello_world" ]
