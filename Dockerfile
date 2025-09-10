# Use the official Nginx image from the Docker Hub as the base image
FROM nginx:latest

# Copy custom configuration file (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy website files (optional)
# COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

