pipeline {
  agent any
 
  tools {nodejs "node"}
 
  stages {
    stage('Cloning DevOps-test-app Repo') {
      steps {
        git branch: 'files', url: 'https://github.com/dani882/jrivera-devops-application.git'
      }
    }
     stage('Building image') {
      steps{
        script {
          docker.build("files"+ ":$BUILD_NUMBER")
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
