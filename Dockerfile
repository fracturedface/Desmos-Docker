FROM node
MAINTAINER fracturedface

COPY ["package.json", "server.js", "start.sh", "/desmos/"]
COPY ["assets", "/desmos/assets/"]

RUN cd /desmos/ && \
  npm install --verbose && \
  ls -la

EXPOSE 54487
VOLUME ["/desmos/"]
CMD ["bash /desmos/start.sh"]
