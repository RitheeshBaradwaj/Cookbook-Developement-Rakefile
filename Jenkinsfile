pipeline {
    agent any
    stages {
        stage('Cleaning Stage') {
            steps {
                bat 'chef exec rake -t clean'
            }
        }
        stage('Lint Stage') {
            steps {
                bat 'chef exec rake -t style'
            }
        }
        stage('Testing with Kitchen') {
            steps {
                bat 'chef exec rake -t test'
            }
        }
        
    }
    post {
        always {
            echo 'We came to an end!'
        }
        success {
            echo 'Build is Successful brother!'
        }
        failure {
            echo 'Sorry mate! Build is Failed! :('
        }
        unstable {
            echo 'Run was marked as unstable'
        }
        changed {
            echo 'Hey look at this, Pipeline state is changed.'
        }
    }
}