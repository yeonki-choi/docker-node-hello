FROM	ubuntu:16.04

RUN 	sed -i 's/archive.ubuntu.com/ftp.daumkakao.com/g' /etc/apt/sources.list 
RUN	apt-get update
RUN	apt-get install -y nodejs npm

# Bundle app source
ADD	. /src

# Install dependancies
RUN	cd /src; npm install


EXPOSE	8080
CMD [ "nodejs", "/src/index.js"]




