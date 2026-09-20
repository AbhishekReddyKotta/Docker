FROM nginx
COPY . /usr/share/nginx/
COPY index.html /usr/share/nginx/html
EXPOSE 1111
