# main image
FROM python:3.7

# working directory
WORKDIR /workspace

# installing necessary dependencies
RUN apt-get update && apt-get install -y make nginx

# start nginx
RUN service nginx start

# entry point
ENTRYPOINT ["nginx", "-g", "daemon off;"]
