#!/bin/sh

sudo apt-get update

echo "Install htop"
sudo apt-get install htop

echo install "nbdiff"
pip install nbdime

echo "Install environment_kernels"
pip install environment_kernels
jupyter notebook --generate-config
echo "c.NotebookApp.kernel_spec_manager_class = 'environment_kernels.EnvironmentKernelSpecManager'
c.EnvironmentKernelSpecManager.conda_env_dirs=['~/anaconda3/envs/']
c.EnvironmentKernelSpecManager.find_virtualenv_envs=False
c.EnvironmentKernelSpecManager.display_name_template='~Env ({})'" >> ~/.jupyter/jupyter_notebook_config.py
conda install nb_conda

echo "Install notebook extensions"
pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
pip install jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --user
pip install autopep8
conda install --channel anaconda-nb-extensions nbbrowserpdf
