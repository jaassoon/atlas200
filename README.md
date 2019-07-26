# atlas200
docker for atlas200 studio server
## prerequisites 
* Download mini_mind_studio_developerkit-1.1.T8.B750SP05.rar from [another location at here](https://github.com/Ascend/ascenddk-private/tree/master/B750SP05
), and then place it to the same location with the Dockerfile.
* You should run the last commented line in Dockerfile by yourself, because there is an error when running in docker build.
Well if you work it out please tell me why （╹◡╹）.
## how to build 
```sudo docker build . -t atlas-studio-img```
### run image
```sudo docker run --name atlas-studio-vm -p 8888:8888 -p 8099:8099 -it atlas-studio-img```
### install studio server
```./install.sh```
### test
```shell
curl localhost:8888
curl localhost:8099
```
