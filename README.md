
# Overview
Jenkins minimal docker container with Jenkins alpine, git, docker

# Build
```
docker build -t haighis/jenkins-alpine .
```

# Run
 ```
 docker run -d -p 8181:8181 haighis/jenkins-alpine
docker run -p 8181:8181 -it --name jenkins -v "/var/run/docker.sock:/var/run/docker.sock:rw" haighis/jenkins-alpine
 ```

 # Access
- `http://localhost:8080`

# Default User - admin
Default user is `admin` with password `admin`

# Reference
- https://www.baeldung.com/ops/root-user-password-docker-container
