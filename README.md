# Webpage
A simple web service based on Ruby and Sinatra.  Enter the URL endpoint for the web service and receive the answer to the ultimate question of the universe.

### Build Container Locally
`docker build -t my-web-service-image .`

### Launch Container Locally (i.e., Docker Desktop)
`docker run -d --name my-web-service -p 8001:4567 my-web-service-image:latest`

### Access Locally Running Container
Launch web browser and enter `http://localhost:8001` or `http://127.0.0.1:8001` assuming you launched the container with the command in the previous section.