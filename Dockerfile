FROM debian:bookworm
ARG DEBIAN_FRONTEND=noninteractive
ENV USER=max
RUN echo deb [trusted=yes] http://www.dmitry-kazakov.de/distributions bookworm main > /etc/apt/sources.list.d/max.list
RUN apt-get update; \
  apt-get upgrade; \
  apt-get --no-install-recommends --yes install max-home-automation dbus-x11 at-spi2-core
COPY /entrypoint.sh /
ENV TZ="Europe/Prague"
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime
CMD /entrypoint.sh
