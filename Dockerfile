FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY index.html /var/www/html/
EXPOSE 8000

