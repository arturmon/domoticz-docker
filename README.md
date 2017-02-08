# domoticz-docker
arturmon/domoticz-docker Tags: **latest** and **dev**
на фото нет установки времени, устанавливается путем добавления **Environment variables=Europe/Moscow**

```
docker create \
  --name=domoticz \
  --net=bridge \
  -v <path to data>:/config \
  -e TZ=<timezone> \
  -p 1443:1443 \
  -p 6144:6144 \
  -p 8080:8080 \
  arturmon/domoticz-docker
  ```
![Иллюстрация к проекту](https://github.com/arturmon/domoticz-docker/blob/master/Безымянный.jpg)
