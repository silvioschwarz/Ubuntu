#! /bin/sh

python3 --version
pip3 --version
virtualenv --version

sudo apt update
sudo apt install python3-dev python3-pip
sudo pip3 install -U virtualenv  # system-wide install

virtualenv --system-site-packages -p python3 ./tfGPUenv
source ./tfGPUenv/bin/activate  # sh, bash, ksh, or zsh
pip3 install --upgrade pip
pip3 list
pip3 install -U tensorflow-gpu

python -c "import tensorflow as tf; tf.enable_eager_execution(); print(tf.reduce_sum(tf.random_normal([1000, 1000])))"
deactivate

echo tensorflow CPU
virtualenv --system-site-packages -p python3 ./tfCPUenv
source ./tCPUenv/bin/activate  # sh, bash, ksh, or zsh
pip3 install --upgrade pip
pip3 list
pip3 install -U tensorflow

python -c "import tensorflow as tf; tf.enable_eager_execution(); print(tf.reduce_sum(tf.random_normal([1000, 1000])))"
deactivate
