

FROM nvidia/cuda:12.1.0-cudnn8-devel-ubi8

RUN apt-get -y install python3-pip

WORKDIR /

ADD . /

RUN pip install -r requirements_nas.txt
RUN pip install jupyter
EXPOSE 8882

