FROM linuxserver/headphones:379fd3d0-ls67

LABEL io.hass.version="ls67" io.hass.type="addon" io.hass.arch="armhf|aarch64|amd64"

# modify/copy files

RUN sed -i "s|config|data|g" /etc/cont-init.d/*

RUN sed -i "s|config|data|g" /etc/services.d/headphones/*

COPY root/ /

VOLUME ["/share", "/ssl", "/data", "/media"]
