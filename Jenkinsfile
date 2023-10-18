pipeline {
    agent any
    environment {
        docker_pwd = credentials ('docker hub_jenkins_cred')
    }
      tools {
        // Install the Maven version configured as "M3" and add it to the path.
         maven "mymaven"
    }
    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
               git branch: 'main', url: 'https://github.com/pavan1026/mvnrepo.git'

                sh "mvn clean package"
            }
        }
         
        stage('Docker image build') {
            steps {
                script {
                    sh 'docker build -t 8179554905/env-app:$BUILD_NUMBER .'
                }
            }
            
        }       
        stage('Docker login and push') {
            steps {
                script {
                 sh 'echo $docker_pwd_PSW | docker login -u $docker_pwd_USR --password-stdin'   
                }
            }
        }    
        stage('latest image of docker') {
            steps {
                script {
                 sh '/home/ubuntu/tst.sh $DOCKERHUB_REPO'   
                }
            }
            
        }
        
        
    }
    
}

