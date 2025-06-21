# Webpage
A simple web service based on Ruby and Sinatra.  Enter the URL endpoint for the web service and receive the answer to the ultimate question of the universe.

### Build Container Locally
`docker build -t my-webservice-image .`


By default the build command will build for the architecture/platform of the machine that you run the command on.  For example, if I run this command on my Macbook the container image built will by default be for `linux/arm64` which will not run on default GitHub Action Runners.  So you can either specify a `linux/arm64` runner in the specification of your GitHub Action or you can build your images for multiple architectures.

Default build:
- `docker build -t myservice-image .`

Multi architecture build:
- `docker buildx create --use`
- `docker buildx build --platform linux/amd64,linux/arm64 -f Dockerfile -t webservice-image --load .`

### Launch Container Locally (i.e., Docker Desktop)
`docker run -d --name my-web-service -p 8001:4567 my-web-service-image:latest`

### Access Locally Running Container
Launch web browser and enter `http://localhost:8001` or `http://127.0.0.1:8001` assuming you launched the container with the command in the previous section.