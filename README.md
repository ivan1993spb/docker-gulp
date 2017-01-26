Dockerfile for nodejs, npm, and gulp, with a focus on making it as easy as possible to run gulp tasks.

This image expects a directory with a gulpfile to be bind mounted at `/mnt`.

## Example Usage
    #default gulp task
    docker run --rm -v $(pwd)/:/mnt/ ivan1993spb/gulp gulp

    #release gulp task
    docker run --rm -v $(pwd)/:/mnt/ ivan1993spb/gulp gulp release

## Dependencies
If this is your first time running gulp for this project, the dependencies will need to be installed first. This is typically done by running `npm install` in the directory where `package.json` is located. If nodejs and npm are not installed locally, the docker container can be used to perform the install task.

    #npm install (installs package.json)
    docker run --rm -v $(pwd)/:/mnt/ ivan1993spb/gulp npm install

## Aliasing
You may want to alias these commands to make them easier to use. Note that you will need to run the commands from a directory which contains a gulpfile and/or package.json.

    # add this to .bashrc to alias npm
    alias npm='docker run --rm -v $(pwd)/:/mnt/ ivan1993spb/gulp npm'
    # and use it like a regular npm command. eg: npm install

    # add this to .bashrc to alias gulp
    alias gulp='docker run --rm -v $(pwd)/:/mnt/ ivan1993spb/gulp gulp'
    # and use it like a regular gulp command. eg: gulp release

