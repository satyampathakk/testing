# Use official Nginx image
FROM nginx:alpine

# Remove default static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file into the container
COPY index.html /usr/share/nginx/html/

# Expose port 5000
EXPOSE 5000

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
