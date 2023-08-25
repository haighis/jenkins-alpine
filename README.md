
# Overview
Jenkins minimal docker container with Jenkins alpine, git, docker

# Build
```
docker build -t haighis/jenkins-alpine .
```

# Run
 ```
 docker run -d -p 8080:8080 haighis/jenkins-alpine
 ```

 # Access
- `http://localhost:8080`

# Default User - admin
Default user is `admin` with password `admin`

# Reference
- https://www.baeldung.com/ops/root-user-password-docker-container
