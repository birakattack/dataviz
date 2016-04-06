FROM ubuntu:14.04

RUN sudo apt-get update

RUN sudo apt-get install -y build-essential python-dev python-pip python-numpy python-scipy python-matplotlib python-pandas python-sympy python-nose

ADD requirements.txt /tmp/requirements.txt

RUN sudo pip install -r /tmp/requirements.txt

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN mkdir /root/notebooks/

WORKDIR /root/notebooks/

EXPOSE 8888

CMD sudo jupyter notebook --ip=*
