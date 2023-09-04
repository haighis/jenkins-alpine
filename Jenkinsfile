// REFERENCE 
// - https://e.printstacktrace.blog/jenkins-pipeline-environment-variables-the-definitive-guide/
// - http://localhost:8787/env-vars.html
pipeline {
    agent any
    stages {
        stage("Build & Publish Docker Image") {
            steps {
                sh "docker build -t jenkins-alpine ."
                sh "docker tag jenkins-alpine haighis/jenkins-alpine:$DOCKER_TAG"
                withEnv(["DOCKER_USER=${DOCKER_USER}","DOCKER_PASSWORD=${DOCKER_PASSWORD}","DOCKER_TAG=${DOCKER_TAG}", ]) {    
                    sh "docker login -u ${DOCKER_USER} -p ${DOCKER_PASSWORD}"
                    sh "docker push haighis/jenkins-alpine:$DOCKER_TAG"
                }
            }
        }     
    }
}