FROM nginx
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 8000
CMD ["nginx", "-g", "daemon off;", "-c", "/etc/nginx/nginx.conf"]
