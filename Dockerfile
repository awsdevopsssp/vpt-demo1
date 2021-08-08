FROM ubuntu

WORKDIR /home/app
COPY . $WORKDIR

CMD ["sh", "simple.sh"]