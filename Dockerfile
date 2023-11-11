# Use an official nginx image as the base
FROM nginx:alpine

# Remove default nginx static resources
RUN rm -rf /usr/share/nginx/html/*

# From 'builder' stage copy over the artifacts in dist folder to default nginx public folder
COPY https://github.com/SeamosV/FishOrDie.git /usr/share/nginx/html

# Expose port 80 to the outside
EXPOSE 80

# Start Nginx server
CMD ["/bin/sh", "-c", "nginx -g \"daemon off;\""]
