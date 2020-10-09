FROM rocm/tensorflow:latest

WORKDIR /src

COPY . /src/

RUN pip install -r requirements.txt && \
    ./get-model.sh

ENTRYPOINT ./virtual_webcam.py
