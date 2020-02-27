 docker run -it --rm \
    -V $(pwd):/tp \
    --gpus all \
    -e LO_LIBRARY_PATH=usr/local/cuda/lib64 \
    joseph_cnn bash