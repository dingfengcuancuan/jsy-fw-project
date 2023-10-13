# How to build

'mvn package' can run with different options for docker build:

* -DskipDockerBuild to skip image build
* -DskipDockerTag to skip image tag
* -DskipDockerPush to skip image push
* -DskipDocker to skip any Docker goals

```

build jar package and no docker image

* mvn clean package -Dmaven.test.skip=true -DskipDocker  

build jar package , docker image, push docker image to docker registry

you private registry without authentication

* mvn clean package -Dmaven.test.skip=true

you private registry with authentication

* docker login --username yourname --password hub.docker.com
* mvn clean package -Dmaven.test.skip=true


```

