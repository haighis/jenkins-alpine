
# Overview
Jenkins minimal docker container with Jenkins alpine, git, docker, .NET SDK 6.0

# Example Jenkinfile
Sample Jenkinsfile to get started with .NET, Java, Elixir - todo

# Build
```
docker build -t haighis/jenkins-alpine .
```

# Tag
docker tag haighis/jenkins-alpine haighis/jenkins-alpine:0.5.0

# Run
 ```
docker run -p 8888:8080 -it --name jenkins -v "/var/run/docker.sock:/var/run/docker.sock:rw" haighis/jenkins-alpine:0.6.0
docker run -p 9999:8080 -it -v "/var/run/docker.sock:/var/run/docker.sock:rw" haighis/jenkins-alpine-new
 ```

 # Define Jenkins Jobs via Jobs DSL
This will allow for creating all jobs from a groovy script in a seed job. Saves time and allows you to restore jobs when configuration is incorrect.
 ## Create Seed Job called SeedJob
 - Go to New Item
 - Name it SeedJob and choose Freestyle project and go to Ok
 - Add Build Step Process Job DSLs
 - Select use provided DSL script, paste in groovy script from `JOB_DSL` and Save
 - Go to Manage Jenkins and go to In-Process script approval to approve the new groovy script
 - Go back to Build Now on Jenkins SeedJob. 
 
 Once SeedJob builds all default jobs are now present.

 # TODO
 - Add credentials for docker hub account called DOCKER_CREDENTIALS. Enter your username and password
 - For Jenkins Aline job add a parameter called DOCKER_TAG that is used with this build to define the docker tag

 # Access
- `http://localhost:8888`

# Default User - admin
Default user is `admin` with password `admin`

# Reference
- https://www.baeldung.com/ops/root-user-password-docker-container
- https://virtualzone.de/posts/alpine-podman/
- https://blog.opstree.com/2023/06/06/jenkins-job-creation-using-multibranch-job-dsl/
