FROM debian:bullseye
ARG DEBIAN_FRONTEND=noninteractive
ENV USER=max
RUN echo deb [trusted=yes] http://www.dmitry-kazakov.de/distributions bullseye main > /etc/apt/sources.list.d/max.list
RUN apt-get update; \
  apt-get upgrade; \
  apt-get --no-install-recommends --yes install max-home-automation dbus-x11 at-spi2-core
COPY /entrypoint.sh /
CMD /entrypoint.sh
