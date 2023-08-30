
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
docker run -d -p 8181:8181 haighis/jenkins-alpine
docker run -p 8888:8080 -it --name jenkins -v "/var/run/docker.sock:/var/run/docker.sock:rw" haighis/jenkins-alpine:0.6.0
 ```

 # Access
- `http://localhost:8080`

# Default User - admin
Default user is `admin` with password `admin`

# Reference
- https://www.baeldung.com/ops/root-user-password-docker-container
- https://virtualzone.de/posts/alpine-podman/
