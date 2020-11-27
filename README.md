# CSG

to build the image

docker build --tag notebook:20201125.1 .

to build the container

docker create --name notebook --publish 8888:8888 -v `pwd`:/home/notebook/src notebook:20201125.1

to run the container

docker start

Then, access it on 127.0.0.1:8888
