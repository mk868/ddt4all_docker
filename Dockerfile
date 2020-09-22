FROM ubuntu:14.04
WORKDIR /root

RUN apt-get update
RUN apt-get install -y \
    python \
    git \
    python-qt4
RUN apt-get clean

RUN git clone https://github.com/cedricp/ddt4all.git

CMD ["python", "/root/ddt4all/ddt4all.py"]

ENV QT_X11_NO_MITSHM=1

