FROM linuxserver/headphones:version-379fd3d0

LABEL io.hass.version="379fd3d0" io.hass.type="addon" io.hass.arch="armhf|aarch64|amd64"

# modify/copy files

RUN sed -i "s|config|data|g" /etc/cont-init.d/*

RUN sed -i "s|config|data|g" /etc/services.d/headphones/*

COPY root/ /

VOLUME ["/share", "/ssl", "/data", "/media"]
