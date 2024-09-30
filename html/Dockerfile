# Use an official Ubuntu image as a base
FROM ubuntu:latest

# Set the timezone
ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update and install needed packages
RUN apt-get update && apt-get install -y nginx php-fpm8.3 php-mysql

# Create the /var/www/html directory and set permissions
RUN mkdir -p /var/www/html && chmod -R 755 /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Copy the nginx configuration file
COPY nginx.conf /etc/nginx/sites-available/default

# Create a symbolic link to enable the nginx configuration
RUN rm -f /etc/nginx/sites-enabled/default && ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

# Expose port 80
EXPOSE 80

ENV PATH=$PATH:/usr/sbin

# Run PHP-FPM in the background
CMD ["php-fpm8.3", "-F", "-R"]

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
