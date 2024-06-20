# Use an official Apache base image
FROM httpd:2.4

# Install curl to download the image
RUN apt-get update && apt-get install -y curl

# Download the image from a specified URL and place it as index.html in the Apache root directory
RUN curl -L https://example.com/image.jpg > /usr/local/apache2/htdocs/index.html

# Inform Docker that the container is listening on port 80
EXPOSE 80
