pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps { checkout scm }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t example-app:${BUILD_NUMBER} .'
      }
    }

    stage('Run Migrations') {
      steps {
        sh 'echo "Running migrations... (replace with real command later)"'
      }
    }

    stage('Push Docker Image (develop only)') {
      when { branch 'develop' }
      steps {
        sh 'echo "Docker push step (configure DockerHub creds later)"'
      }
    }
  }

  post {
    success {
      echo "SUCCESS"
    }
    failure {
      echo "FAILED"
    }
  }
}
