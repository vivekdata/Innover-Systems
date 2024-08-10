FROM nginx:alpine
COPY index.html /var/www/html/
ENTRYPOINT service nginx start && bash
EXPOSE 8000
