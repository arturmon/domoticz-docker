# domoticz-docker

arturmon/domoticz-docker Tags: **latest** and **dev** 
add **/etc/localtime:ro**

### Dockerimage
[![](https://images.microbadger.com/badges/image/arturmon/domoticz-docker.svg)](https://microbadger.com/images/arturmon/domoticz-docker "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/arturmon/domoticz-docker.svg)](https://microbadger.com/images/arturmon/domoticz-docker "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/license/arturmon/domoticz-docker.svg)](https://microbadger.com/images/arturmon/domoticz-docker "Get your own license badge on microbadger.com")


```
docker create \
  --name=domoticz \
  --net=bridge \
  -v <path to data>:/config \
  -e TZ=<timezone> \
  -p 443:1443 \
  -p 6144:6144 \
  -p 8080:8080 \
  -p 9898:9898 \
  arturmon/domoticz-docker
  ```
![Иллюстрация к проекту](https://github.com/arturmon/domoticz-docker/blob/master/Безымянный.jpg)
