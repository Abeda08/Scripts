FROM # Use a base image
FROM ubuntu:20.04

# Set an environment variable
ENV MY_VAR=HelloDocker

# Copy files into the image
COPY ./app /app

# Run a command when the container starts
CMD ["./app/start.sh"]
