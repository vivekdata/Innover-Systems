FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
ENTRYPOINT service nginx start && bash
EXPOSE 8000
