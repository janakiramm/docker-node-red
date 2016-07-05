FROM ubuntu:14.04
MAINTAINER janakiramm@gmail.com
RUN apt-get update && apt-get install -y supervisor nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g --unsafe-perm node-red
EXPOSE 1881-2000
CMD ["/usr/bin/supervisord"]