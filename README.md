# cam.openbuilds.com
OpenBuilds CAM - Cloud based software for converting DXF, SVG, Bitmap (BMP, JPG, PNG, GIF) and Gerber X274 to G-Code


Access it live at [https://cam.openbuilds.com](https://cam.openbuilds.com)


## Self-hosting the CAM software with Docker:

### Building the Docker container

To build this yourself, install Docker on your preferred operating system and do the following:

```bash
cd /path/to/OpenBuilds-CAM/
docker build -t yourdockercontainername:latest -f Dockerfile .
# Optional, push to Docker Hub
docker push yourdockercontainername:latest
```

### Running the Docker container

To run the docker container, make sure you build it first, then do the following:
```bash
# To run the docker container in the foreground:
docker run yourdockercontainername:latest

# To run it with docker-compose, make sure docker-compose-plugin is installed (or Docker Desktop is installed for Windows)
cd /path/to/OpenBuilds-CAM/
docker-compose up -d

# To stop the docker container if running with Docker Compose:
cd /path/to/OpenBuilds-CAM/
docker-compose down
```

### Accessing/Using OpenBuilds-CAM from Docker

The docker container exposes port 80. Make sure your computer has not already reserved port 80, if using the docker container directly.

If using docker-compose, you may wish to change the forwarded port by editing docker-compose.yml. The chosen default port is 9944, which
forwards to the container's port 80.

After running the container with Docker Compose, you can access it at http://computerYouRanItFrom:9944/
If you run the docker container directly, you can access it at http://localhost:80/

