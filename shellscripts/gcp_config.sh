sudo apt-get update
sudo apt-get --assume-yes upgrade
sudo apt-get --assume-yes install software-properties-common
sudo apt-get install python-setuptools python-dev build-essential
sudo easy_install pip
sudo pip install jupyter
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.6
sudo apt-get install python3-pip
sudo apt-get install python3.6-dev
python3.6 -m pip install ipykernel
python3.6 -m pip install ipython
python3.6 -m ipykernel install --user

sudo pip install pandas
sudo pip install numpy
sudo pip install nibabel
sudo pip install sklearn
sudo pip install tensorflow
sudo pip install keras

jupyter notebook --generate-config
sudo nano ~/.jupyter/jupyter_notebook_config.py

echo "c.NotebookApp.ip = '0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py

sudo sh -c "echo 1 > /proc/sys/vm/overcommit_memory"

gsutil -m cp -r gs://brain_tumor_nn/brain_tumor_nn/data/bet_processed ~/
gsutil -m cp -r gs://brain_tumor_nn/brain_tumor_nn/data/lgg_bet_processed ~/
gsutil -m cp -r gs://brain_tumor_nn/brain_tumor_nn/02\ -\ Modeling.ipynb ~/

jupyter-notebook --no-browser --port=5000
