FROM ubuntu

# RUN command for creating directories
RUN mkdir dirforadd
RUN mkdir dirforcopy

#Copy files using COPY
COPY copyfile* /dirforcopy/

#Copy files using ADD
ADD addfile* /dirforadd/

# Working on archive files
ADD nodeapp.tar /dirforadd/
COPY nodeapp.tar /dirforcopy/ 

#Download files from remote locations
ADD https://github.com/nginxinc/docker-nginx/blob/f3d86e99ba2db5d9918ede7b094fcad7b9128cd8/mainline/debian/Dockerfile /dirforadd/

#COPY https://github.com/nginxinc/docker-nginx/blob/f3d86e99ba2db5d9918ede7b094fcad7b9128cd8/mainline/debian/Dockerfile /dirforadd/