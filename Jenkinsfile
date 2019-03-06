pipeline {
  agent any
 
  tools {nodejs "node"}
 
  stages {
    stage('Cloning DevOps-test-app Repo') { steps {
        git branch: 'files', url: 'https://github.com/dani882/jrivera-devops-application.git'
      }
    }
     stage('Building image') {
      steps{
        script {
          docker.build("files"+ ":$BUILD_NUMBER", "--build-arg DEVOPS_TEST_BACKEND_AWS_USER_BUCKET_NAME="$BUCKET_NAME" --build-arg DEVOPS_TEST_BACKEND_AWS_ACCESS_KEY="$ACCKEY" --build-arg DEVOPS_TEST_BACKEND_AWS_SECRET_KEY="$SECKEY" --build-arg DEVOPS_TEST_BACKEND_AWS_PREFIX='' --build-arg DEVOPS_TEST_BACKEND_AWS_REGION='us-east-1 .")
        }
      }
    }
  }
 post {
        always {
            // make sure that the Docker image is removed
            sh "docker rmi files:$BUILD_NUMBER"
        }
    }
}
-