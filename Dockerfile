# Pull base image
FROM node:4

# install http server globally
RUN npm install http-server -g

# Copy the application folder inside the container
COPY my_app/ /my_app

# Expose the port in the machine
EXPOSE 8082

# Set the working directory
RUN ls /my_app
WORKDIR /my_app

# Specifying the start instruction
CMD ["http-server", "-p 8082"]
