pipeline {
  agent any
 
  tools {nodejs "node"}
 
  stages {
    stage('Cloning DevOps-test-app Repo') {
      steps {
        git branch: 'files', url: 'https://github.com/dani882/jrivera-devops-application.git'
      }
    }
    stage('Install the nodejs dependencies') {
       steps {
        sh 'npm install --production'
       }
    }
     stage('Building image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
  }
}
