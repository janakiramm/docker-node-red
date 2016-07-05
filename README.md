# Node-Red for Multiple Users

Node-Red is not designed for multiple users. By running it under Supervisor packaged as Docker container, we can run multiple instances of Node-Red. 

Follow these steps to run three isolated instances of Node-Red

* Clone this repo 
```
git clone https://github.com/janakiramm/docker-node-red.git
```
* Build the Docker image
```
docker build -t docker-node-red .
```
* Launch the container from the same directory
```
docker run -d \
 -p 1880-1884:1880-1884 \
 -v $(PWD)/etc/supervisor:/etc/supervisor \
 -v $(PWD)/var/log/supervisor:/var/log/supervisor \
 -v $(PWD)/rules:/rules \
 docker-node-red
```
* Check ports 1881, 1882, and 1883 on the host for Node-Red instances


