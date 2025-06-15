FROM nginx:stable-alpine3.21

COPY ./app /usr/share/nginx/html

EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

