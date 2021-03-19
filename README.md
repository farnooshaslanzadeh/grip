#GRIP APP

Grip is an application to render README files before sending them to Github. You can have more information about grip form its repository: https://github.com/joeyespo/grip/blob/master/README.md 

In this exercise you will build a docker image for the grip application. Once the image is built, the user who wants to render his/her README file, launches a container by mounting the README file to a certain directory. Since we don't want th users to launch other commands with our container, we set entrypoint for "grip" command so any parameter lanched with container will be a parameter to grip command.

This time i didn't write exact commands to write in your Dockerfile. I wrote what you should do, you must google if you don't know a certain command but they are really simple things.

1. Use alpine:latest as base image
2. Install py-pip application with apk package manager
3. Then use pip to install grip
4. Create directories /.grip and /data
5. Switch to user with uid 1000
6. Change working dir to /data. /data dir is the directory where user will mount its README file
7. Set entrypoint to "grip" and command to "--help"

8. Build image. 
9. Launch container with:
    - container name: grip
    - exposed port: 6419
    - mount current directory(which containers this README) to /data directory
    - parameters to launch with grip: "./README.md" and "0.0.0.0"

To verify if it works correctly, go to browser with the 127.0.0.1:port_you_exposed, you must see this README renderes as web page.

# ``` docker run --name grip -v ${PWD}:/data -p 6419:6419 grip README.md 0.0.0.0
