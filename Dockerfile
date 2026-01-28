


FROM nginx:latest

# Create the folder inside the container
RUN mkdir -p /etc/nginx/ssl

# Copy your existing files from the screenshot
COPY second.crt /etc/nginx/ssl/second.crt
COPY second.key /etc/nginx/ssl/second.key

# Copy config and html
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 443