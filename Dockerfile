#First layer linux image
FROM python:3.7
#from my base repository put all file to this folder
COPY . /app
#setup working directory
WORKDIR /app
#install all dependencies
RUN pip install -r requirements.txt
#run app
# Make port 8501 available to the world outside this container
EXPOSE 8501

CMD ["streamlit", "run", "SimpleApp.py"]



#Check Images: docker images
#Delete Image : docker image rm -f ahmadzaidi2/streamlitapp
#Docker build : docker build -t ahmadzaidi2/streamlitapp . 
#Docker run : docker run -p 8501:8501 ahmadzaidi2/streamlitapp
#Check Running Container : docker ps
#Stop running container: docker stop imageid

#login to docker : docker login
#push the latest version of app to docker hub: docker push ahmadzaidi2/streamlitapp
#Go to tags  copy pull command from docker hub : docker pull ahmadzaidi2/streamlitapp:latest
#run the app again in detached mode:docker run -d -p 8501:8501 ahmadzaidi2/streamlitapp:latest