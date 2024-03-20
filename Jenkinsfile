pipeline{
    agent any
    tools{
        maven 'Maven'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Maxen24/petadoption']])
                echo 'mvn clean package'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    echo 'docker build -t petadop .'
                }
            }
        }
    }
}
        