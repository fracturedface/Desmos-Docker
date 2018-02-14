FROM node
MAINTAINER fracturedface

COPY ["package.json", "server.js", "start.sh", "/desmos/"]
COPY ["assets", "/desmos/assets/"]

RUN cd /desmos/ && \
  npm install --verbose && \
  chmod +x /desmos/start.sh

EXPOSE 54487
VOLUME ["/desmos/"]
CMD ["/desmos/start.sh"]
