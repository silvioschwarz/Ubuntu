#! /bin/sh

# Add NVIDIA package repositories


wget -c -O cuda.deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/$(wget -q https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ -O - | egrep -o "cuda-repo-ubuntu1804_[0-9\.]+-[0-9]+_amd64.deb"| sort -V  | tail -1)
sudo dpkg -i cuda.deb
rm cuda.deb

sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt-get update

wget -c -O nvidia-ML.deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/$(wget -q http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/ -O - | egrep -o "nvidia-machine-learning-repo-ubuntu1804_[0-9\.]+-[0-9]+_amd64.deb"| sort -V  | tail -1)
sudo dpkg -i nvidia-ML.deb
rm nvidia-ML.deb
#sudo apt install ./nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo apt-get update
sudo apt install -f

# Install NVIDIA driver
sudo apt-get install --no-install-recommends nvidia-driver-410
# Reboot. Check that GPUs are visible using the command: nvidia-smi

# Install development and runtime libraries (~4GB)
sudo apt-get install --no-install-recommends \
    cuda-10-0 \
    libcudnn7  \
    libcudnn7-dev


# Install TensorRT. Requires that libcudnn7 is installed above.
sudo apt-get update && \
        sudo apt-get install nvinfer-runtime-trt-repo-ubuntu1804-5.0.2-ga-cuda10.0 \
        && sudo apt-get update \
        && sudo apt-get install -y --no-install-recommends libnvinfer-dev=5.0.2-1+cuda10.0
