# Installing Anaconda and Python3.6 on GCE
wget http://repo.continuum.io/archive/Anaconda3-4.0.0-Linux-x86_64.sh
bash Anaconda3-4.0.0-Linux-x86_64.sh
source ~/.bashrc
conda create -n env python=3.6
source activate env

# Installing CUDA
sudo apt-get update
sudo apt-get install cuda-9-0

# To confirm CUDA installed
nvidia-smi

# cuDNN Downloads: Runtime Library and Developer Library
gsutil cp -r gs://brain_tumor_nn/libcudnn7_7.6.5.32-1+cuda9.0_amd64.deb ~/
gsutil cp -r gs://brain_tumor_nn/libcudnn7-dev_7.6.5.32-1+cuda9.0_amd64.deb ~/

sudo dpkg -i libcudnn7_7.6.5.32-1+cuda9.0_amd64.deb
sudo dpkg -i libcudnn7-dev_7.6.5.32-1+cuda9.0_amd64.deb

# Installing tensorflow-gpu
pip install tensorflow-gpu
# Updating package
pip install --upgrade tensorflow-gpu

# Installing Jupyter Notebook
pip install Jupyter Notebook
# Making configuration file and editing it to use Jupyter Notebook on GCE
jupyter notebook --generate-config
ls ~/.jupyter/jupyter_notebook_config.py
cd /home/aerikajs/.jupyter/
nano jupyter_notebook_config.py

# Needs this or arrays won't be saved as floats
sudo sh -c "echo 1 > /proc/sys/vm/overcommit_memory"

# Copying brain data from Google Cloud Bucket
gsutil -m cp -r gs://brain_tumor_nn/brain_tumor_nn/data/bet_processed ~/
gsutil -m cp -r gs://brain_tumor_nn/brain_tumor_nn/data/lgg_bet_processed ~/
gsutil -m cp -r gs://brain_tumor_nn/brain_tumor_nn/02\ -\ Modeling.ipynb ~/

# Opening jupyter notebook
jupyter-notebook --no-browser --port=5000
