# Installing Anaconda and Python3.6 on GCE
wget http://repo.continuum.io/archive/Anaconda3-4.0.0-Linux-x86_64.sh
bash Anaconda3-4.0.0-Linux-x86_64.sh
source ~/.bashrc
conda create -n env python=3.6
source activate env

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
