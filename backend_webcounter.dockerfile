#let us use a base image
FROM python:3.13.0

#need the requirements file and that is in the repository
#first clone the repository on CLI 


#copy files from host to image to work with
#cd /usr/src/app
WORKDIR /usr/src/app

COPY CI-CD_web-counter/requirements.txt .

#pip install -r requirements.txt
RUN pip install -r requirements.txt

#copy source code from git repo into my image
COPY CI-CD_web-counter/app.py .

#expose port
EXPOSE 5000

#command run the python image
CMD ["python", "app.py"]