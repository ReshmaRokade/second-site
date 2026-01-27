#FROM nginx:latest
#COPY index.html /usr/share/nginx/html/index.html
#COPY nginx.conf /etc/nginx/conf.d/default.conf
FROM nginx:latest

RUN mkdir -p /etc/nginx/ssl

COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Sirf wahi 2 starting wali files
COPY second.crt /etc/nginx/ssl/second.crt
COPY second.key /etc/nginx/ssl/second.key

EXPOSE 8443