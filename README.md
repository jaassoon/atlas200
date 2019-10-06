# atlas200
docker for atlas200 studio server
## prerequisites 
* For Mac
* Download mini_mind_studio_developerkit-1.1.T8.B750SP05.rar from [another location at here](https://github.com/Ascend/tools/blob/master/B750SP05/mini_mind_studio_developerkit-1.1.T8.B750SP05.rar
), and then place it to the same location with the Dockerfile.  
Or download by command as below:  
```wget https://media.githubusercontent.com/media/Ascend/tools/master/B750SP05/mini_mind_studio_developerkit-1.1.T8.B750SP05.rar```
## how to build 
```sudo docker build . -t atlas-studio-img```
### run image
```sudo docker run -p 8888:8888 -p 8099:8099 --name atlas-studio-vm --privileged -it atlas-studio-img```
### openvpn config
<!-- in your host machine -->
```bash run copy_ovpn.sh```
```
<!-- in your container -->
sudo openvpn --config myClient.ovpn
<!-- in your container and in new terminal -->
sudo route add -net 192.168.0.2 netmask 255.255.255.255 gw $(ifconfig |grep P-t-P|cut -d: -f3|cut -d' ' -f1)
export studioIP=$(ifconfig |grep P-t-P|cut -d: -f2|cut -d' ' -f1)
echo studioIP is ${studioIP}
```
### install studio server
```printf '%s\n' y y $(echo $studioIP) |./install.sh -x```
### test
```shell
curl localhost:8888
curl localhost:8099
```