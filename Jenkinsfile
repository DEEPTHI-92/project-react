pipeline {
    agent any

    stages {
        stage ('build') {
            steps {
                sh ' chmod +x build.sh'
		sh './build.sh'
            }
        }

        stage ('deploy') {
            steps {
		sh 'chmod +x deploy.sh'
                sh './deploy.sh'
            }
        }
    }
}
