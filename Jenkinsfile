pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                echo 'Setting up...'
                sh 'cd ${AGBCC} && ./install.sh ${WORKSPACE} && cd ${WORKSPACE}'
                sh 'cp /usr/local/etc/roms/tmc.us.gba baserom.gba'
                sh 'make -j setup'
            }
        }
        stage('Build') {
            steps {
                sh 'make -j'
            }
        }
        stage('Report Progress') {
            when {
                branch 'master'
            }
            steps {
                sh 'python3 progress.py >> /var/www/html/reports/progress_tmc.csv'
                sh 'python3 progress.py -m >> /var/www/html/reports/progress_tmc_matching.csv'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
