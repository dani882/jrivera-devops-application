pipeline {
  agent any
 
  tools {nodejs "node"}
 
  stages {
    stage('Cloning DevOps-test-app Repo') {
      steps {
        git 'https://github.com/dani882/devops-test-app.git'
      }
    }
    stage('Install the nodejs dependencies') {
       steps {
        sh 'npm install --production'
       }
    }
  }
}
