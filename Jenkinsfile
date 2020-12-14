pipeline {
    agent any
    stages {
        stage ('SCM') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '**']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '6de08d07-93e4-4fa9-826f-72fdcf646110', url: 'https://github.com/ulchatur/new_docker.git']]])
            }
        }
        stage ('Deployment') {
            steps {
                sh label: '', script: '''docker --version
                cd /var/lib/jenkins/workspace/docker_image
                docker build -t nodejs .
                docker run -itd -p 3000:3000 --name nodejs nodejs '''
            }
        }
        stage ('Email') {
            steps {
                emailext body: 'Hi', subject: 'test', to: 'ullasvardhan@gmail.com'
            }
        }
    }
}
