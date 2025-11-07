#start from offical Python image
FROM python:3.9

#Set working directory
WORKDIR /app

#Copy all files to container
COPY . .

#Install dependenices
RUN pip install -r requirements.txt

#Commands to run app
CMD ["python", "app.py"]
