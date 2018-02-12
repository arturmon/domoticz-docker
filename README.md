# Docker Hub

https://hub.docker.com/r/arturmon/domoticz-docker/

# domoticz-docker

arturmon/domoticz-docker Tags: **latest** and **dev** 

### Dockerimage
[![](https://images.microbadger.com/badges/image/arturmon/domoticz-docker:dev.svg)](https://microbadger.com/images/arturmon/domoticz-docker:dev "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/arturmon/domoticz-docker:dev.svg)](https://microbadger.com/images/arturmon/domoticz-docker:dev "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/license/arturmon/domoticz-docker:dev.svg)](https://microbadger.com/images/arturmon/domoticz-docker:dev "Get your own license badge on microbadger.com")


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
  arturmon/domoticz-docker:dev
  ```
![Иллюстрация к проекту](https://github.com/arturmon/domoticz-docker/blob/master/Безымянный.jpg)

### Запуск контейнера на Synology
так как оболочка synology не дает сделать ссылку /etc/localtime приходиться запускать контейнер ручками, плюс тут используется шлюз от xiaomi поэтому используется сип сети host, получается вот такая строка запуска:
```
docker run -d --name=domoticz \
--net=host \
-v /volume1/homes/.../scripts:/opt/domoticz/scripts \
-v /volume1/homes/.../conf:/config \
-v /volume1/homes/.../backup:/opt/domoticz/backups \
-v /etc/localtime:/etc/localtime:ro \
arturmon/domoticz-docker:dev
```
... тут указываем путь где лежат у вас конфиги от Домотикса
