# domoticz-docker
arturmon/domoticz-docker Tags: latest and dev
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
