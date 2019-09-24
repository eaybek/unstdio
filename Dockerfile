FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/unstdio/unstdio/ /root/packages/unstdio/
WORKDIR /root/packages/unstdio
RUN pip3 install /root/packages/unstdio

CMD ["python3","test/unstdio.py"]


