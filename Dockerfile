FROM ubuntu
MAINTAINER SaGU <gs@somewhere.net>

#Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# Update packages
Run apt update; apt upgrade -y

#Install packages 
Run apt install -y apache2 vim-nox

#Set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND
