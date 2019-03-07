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
              dockerImage = docker.build "files" + ":$BUILD_NUMBER"
            }
          }
        }
    }
    post {
        always('Remove Unused docker image') {
        sh "docker rmi files:$BUILD_NUMBER"
        }
    }
}
