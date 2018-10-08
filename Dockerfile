# Instructions copied from - https://hub.docker.com/_/python/
FROM python:3-onbuild
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /usr/src/app

# tell the port number the container should expose
EXPOSE 5000

# run the command
CMD ["python", "./app.py"]
