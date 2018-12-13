# specify docker base image
FROM node:alpine


# make seprate directory in the container for 
# project soo there is no conflict between
# the directories and file maintaining is done
# its a relative dir for 

WORKDIR /usr/app

# COPY the files from local machine
# container  cause this file avaiable 
# locally but not in the container
# so use COPY COMMAND FOR THAT

# 1st ./ == for the local the current working directory
# 2nd ./ == for the container
COPY ./package.json ./

# need not to install again and again all dependencies so directly copy the package.json file and write command after the npn install this will ingore the step of npm install so we wrote command after npm install to copy all files

# install some dependencies present in 
# package.json file
RUN npm install
COPY ./ ./
# default commands

CMD ["npm","start"] 
