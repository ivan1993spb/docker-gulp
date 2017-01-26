# Pull base image.
FROM node:latest

# global install gulp and jshint
RUN npm install -g --quiet --no-progress gulp jshint

# Define working directory.
WORKDIR /mnt

CMD ["-"]
ENTRYPOINT ["gulp", "--silent", "--no-color"]
