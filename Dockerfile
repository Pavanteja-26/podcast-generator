FROM ubantu: latest

RUN apt-get update && apt-get install -y \
 python3.10 \
 python3-pip \
 git

 RUN pip3 install pyYAML

 COPY feed.py /usr/bin/feed.py

 COPY  enrtypoint.sh / enrtypoint.sh

 ENTRYPOINT ["/enrtypoint.sh"]