pipeline {
  agent any
 
  environment {
    registry = "jrdevers/devops-aplication-files"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
 
  stages {
    stage('Cloning DevOps-test-app Repo') { steps {
        git branch: 'files', url: 'https://github.com/dani882/jrivera-devops-application.git'
      }
    }
     stage('Building image') {
      steps{
        script {
                dockerImage = docker.build(registry + ":$BUILD_NUMBER", "--build-arg DEVOPS_TEST_BACKEND_AWS_USER_BUCKET_NAME='blablab' --build-arg DEVOPS_TEST_BACKEND_AWS_ACCESS_KEY='bdfd' --build-arg DEVOPS_TEST_BACKEND_AWS_SECRET_KEY='sdgsgsd' --build-arg DEVOPS_TEST_BACKEND_AWS_PREFIX='' --build-arg DEVOPS_TEST_BACKEND_AWS_REGION='us-east-1' .")

        }
      }
    }
    stage('Deploy Image') {
  steps{
    script {
      docker.withRegistry( '', registryCredential ) {
        dockerImage.push()
      }
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