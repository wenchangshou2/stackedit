FROM node
MAINTAINER CenturyLink
EXPOSE 3000

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget

WORKDIR /
RUN mkdir stackedit
RUN wget https://github.com/benweet/stackedit/archive/v5.2.4.tar.gz
RUN tar -xzf v5.2.4.tar.gz

WORKDIR  /stackedit-5.2.4 
RUN npm build
CMD npm start
