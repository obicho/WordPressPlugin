# Specify the base image
FROM wordpress:latest

# Set the working directory
WORKDIR /var/www/html

# Copy the WordPress files from your local machine to the container
COPY src /var/www/html/wp-content/plugins

# Define the volume mount point
VOLUME /var/www/html/src

# Specify the command to run when the container starts
CMD ["apache2-foreground"]