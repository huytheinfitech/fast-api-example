pipeline {
   agent any
  
   environment {
       IMAGE_NAME = "fastapi-image"
       CONTAINER_NAME = "fastapi-container"
 
   }
  
   stages {
       stage('Build') {
           steps {
               echo 'Building..'
               sh '/usr/local/bin/docker image build -t $IMAGE_NAME .'
           }
       }
       stage('Deploy') {
           steps {
               echo 'Deploying....'
               sh '/usr/local/bin/docker stop $CONTAINER_NAME || true'
               sh '/usr/local/bin/docker rm $CONTAINER_NAME || true'
               sh '/usr/local/bin/docker run -d -p 5001:8000 --name $CONTAINER_NAME $IMAGE_NAME'
           }
       }
   }
}