FROM ubuntu
RUN apt update && apt install -y npm
COPY app.js /var/app.js
CMD node /var/app.js