#First layer linux image
FROM python:3.7
#from my base repository put all file to this folder
COPY . /app
#setup working directory
WORKDIR /app
#install all dependencies
RUN pip install -r requirements.txt
#run app
CMD ["python","SimpleApp.py"]