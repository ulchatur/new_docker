pipeline {
    agent any
    stages {
        stage('SCM Chockout'){
           steps{
            git credentialsId: '94363', url: 'https://git-codecommit.eu-west-1.amazonaws.com/v1/repos/ConnectedContainerMicro'
            }
        }
