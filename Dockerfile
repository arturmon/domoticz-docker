FROM ubuntu:14.04
MAINTAINER Artur Mudrykh <arturmon82@gmail.com>
LABEL org.freenas.interactive="false" \
org.freenas.version="2" \
org.freenas.upgradeable="true" \
org.freenas.expose-ports-at-host="true" \
org.freenas.autostart="true" \
org.freenas.web-ui-protocol="http" \
org.freenas.web-ui-port="8080" \
org.freenas.web-ui-path="" \
org.freenas.port-mappings="8080:8080/tcp,443:443/tcp,6144:6144/tcp,9898:9898/tcp" \
org.freenas.volumes="[ \
{ \
\"name\": \"/config\", \
\"descr\": \"Domoticz config files\"	\
}, \
{ \
\"name\": \"/opt/domoticz/scripts\", \
\"descr\": \"Domoticz scripts volume\"	\
}, \
{ \
\"name\": \"/opt/domoticz/backups\", \
\"descr\": \"Location of backup Domoticz\"	\
} \
]" \
org.freenas.settings="[ \
{ \
\"env\": \"TZ\", \
\"descr\": \"Timezone information, eg Europe/Moscow\", \
\"optional\": true \
}, \
{ \
\"env\": \"PUID\", \
\"descr\": \"User ID\", \
\"optional\": true \
}, \
{ \
\"env\": \"PGID\", \
\"descr\": \"Group ID\", \
\"optional\": true \
} \
]"
