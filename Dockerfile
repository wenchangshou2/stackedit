FROM node
MAINTAINER CenturyLink
EXPOSE 8080

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget

WORKDIR /
RUN mkdir stackedit
RUN wget https://github.com/benweet/stackedit/archive/v5.2.4.tar.gz
RUN tar -xzf v5.2.4.tar.gz

WORKDIR  /stackedit-5.2.4 
RUN npm install
CMD npm start
