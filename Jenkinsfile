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
               sh 'docker image build -t $IMAGE_NAME .'
           }
       }
       stage('Deploy') {
           steps {
               echo 'Deploying....'
               sh 'docker stop $CONTAINER_NAME || true'
               sh 'docker rm $CONTAINER_NAME || true'
               sh 'docker run -d -p 5000:5000 --name $CONTAINER_NAME $IMAGE_NAME'
           }
       }
   }
}