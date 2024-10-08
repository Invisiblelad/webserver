# webserver
## Flask Docker App

This is a simple Flask application that is containerized using Docker. The app serves an HTML page styled with CSS.


## Architecture

<<<<<<< HEAD
![CICD](./images/cicd.drawio)
=======
![CICD](./images/cicd.drawio.svg)
>>>>>>> c01ce48 (added workflow)


## Prerequisites

- [Docker](https://www.docker.com/) installed
- Basic knowledge of Flask and Docker

## Installation

```bash
# Build the Docker image
docker build -t flask-docker-app .

# Run the Docker container
docker run -p 5000:5000 flask-docker-app

# Open your browser 
http://localhost:5000.

