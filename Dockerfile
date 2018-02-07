FROM ubuntu:latest

RUN useradd shachaf
RUN apt update && apt install -y libcurl4-openssl-dev libsqlite3-dev git wget 
RUN wget http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list && apt-get update --allow-unauthenticated && apt-get -y --allow-unauthenticated install --reinstall d-apt-keyring && apt-get update && apt-get install -y dmd-compiler dub
##### Install

RUN cd /tmp && git clone https://github.com/skilion/onedrive.git
RUN cd /tmp/onedrive/ && /usr/bin/make && /usr/bin/make install

CMD /usr/local/bin/onedrive -m -v

# CMD /bin/bash