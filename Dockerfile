FROM nginx:latest

# SSL folder banana zaroori hai
RUN mkdir -p /etc/nginx/ssl/

# Website content copy karo
COPY index.html /usr/share/nginx/html/index.html

# Nginx configuration (jisme bundle.crt ka path hai)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Certificates copy karo (Hierarchy/Bundle wali file)
COPY bundle.crt /etc/nginx/ssl/bundle.crt
COPY second.key /etc/nginx/ssl/second.key

# Ports open karo
EXPOSE 80
EXPOSE 443
EXPOSE 8443