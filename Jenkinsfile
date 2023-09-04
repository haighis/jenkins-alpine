// REFERENCE 
// - https://e.printstacktrace.blog/jenkins-pipeline-environment-variables-the-definitive-guide/
// - http://localhost:8787/env-vars.html
pipeline {
    agent any
    //options([parameters([string('DOCKER_TAG')]), [$class: 'JobLocalConfiguration', changeReasonComment: '']])
    //properties([parameters([string(defaultValue: 'haighis', name: 'DOCKER_LOGIN'), password(defaultValueAsSecret: <object of type hudson.util.Secret>, name: 'DOCKER_PASSWORD'), string('DOCKER_TAG')]), [$class: 'JobLocalConfiguration', changeReasonComment: '']])
    stages {
        stage("Build & Publish Docker Image") {
            steps {
                sh "docker build -t jenkins-alpine ."
                sh "docker tag jenkins-alpine haighis/jenkins-alpine:$DOCKER_TAG"
                withCredentials([usernamePassword(credentialsId: 'DOCKER_CREDENTIALS', passwordVariable: 'docker_password', usernameVariable: 'docker_username')]) {
                    // some block
                     sh "docker login -u ${docker_username} -p ${docker_password}"
                     sh "docker push haighis/jenkins-alpine:$DOCKER_TAG"
                }
                // withEnv(["DOCKER_USER=${DOCKER_USER}","DOCKER_PASSWORD=${DOCKER_PASSWORD}","DOCKER_TAG=${DOCKER_TAG}", ]) {    
                //     sh "docker login -u ${DOCKER_USER} -p ${DOCKER_PASSWORD}"
                //     sh "docker push haighis/jenkins-alpine:$DOCKER_TAG"
                // }
            }
        }     
    }
}