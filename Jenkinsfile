pipeline {
    agent any
    tools {
        jdk 'LocalJDK' // Name of the JDK tool configured in Jenkins
        maven 'LocalMaven' // Name of the Maven tool configured in Jenkins
    }
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/subham73/javaWebApp.git', branch: 'main'
            }
        }
        stage('Build') {
            steps {
                dir('my-web-app'){
                    bat 'mvn clean package'
                }
            }
        }
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: '**/target/*.war', allowEmptyArchive: true
            }
        }
        stage('Deploy') {
            steps {
                bat 'copy my-web-app\\target\\*.war "C:\\Program Files\\Apache Software Foundation\\Tomcat 10.1\\webapps\\"'
            }
        }

    }
}