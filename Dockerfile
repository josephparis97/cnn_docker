FROM nvidia/cuda:10.1-base-ubuntu18.04

RUN apt update && apt install libsm6 libxext6 libxrender-dev libglib2.0-dev -y
RUN apt-install python3-pip -y
ADD requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

CMD ["python3", "-c", "import cv2, tensorflow"]