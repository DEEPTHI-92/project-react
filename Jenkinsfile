pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'chmod +x build.sh'
		sh './build.sh'
            }
        }

        stage('Test') {
            steps {
                echo "Testing"
            }
        }

        stage('Deploy to Dev') {
            when {
                branch 'dev'
            }
            steps {
                echo "Deploying to dev branch"
                sh 'chmod +x deploy.sh'
                sh './deploy.sh'
            }
        }

        stage('Deploy to Prod') {
            when {
                branch 'master'
            }
            steps {
                echo "Deploying to Prod branch"
                sh 'chmod +x deploy.sh'
                sh './deploy.sh'
            }
        }
    }
}
