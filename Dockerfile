FROM node
MAINTAINER fracturedface

COPY ["package.js", "server.js", "start.sh", "/desmos/"]

RUN npm install --verbose && \

EXPOSE 54487
VOLUME ["/desmos/"]
CMD ["/desmos/start.sh"]
