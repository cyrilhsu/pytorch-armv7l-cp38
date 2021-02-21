FROM python:3.8-slim
ADD . .
RUN apt-get update && apt-get install -y --no-install-recommends \
         libopenblas-dev libgomp1 libjpeg-dev libpng-dev\
         && rm -rf /var/lib/apt/lists/* && mkdir /workspace \
         && pip install \
                numpy-1.20.1-cp38-cp38-linux_armv7l.whl \
                torch-1.7.0a0-cp38-cp38-linux_armv7l.whl \
                Pillow-8.1.0-cp38-cp38-linux_armv7l.whl \
                torchvision-0.8.0a0-cp38-cp38-linux_armv7l.whl \
                opencv_python_headless-4.5.1.48-cp38-cp38-linux_armv7l.whl
WORKDIR /workspace
CMD ["/bin/bash"]
