#!/bin/bash
set -euxo pipefail
name=lab3

eval "$($HOME/miniconda3/bin/conda shell.bash hook)"
conda env remove -y -n "${name}"
conda create -y -n "${name}"
conda activate "${name}"
conda install -y -c conda-forge jupyterlab=3 ipycanvas appmode jupyterlab-lsp 'nodejs>=12.0.0' python-lsp-server

# pip install tensorboard
# pip install jupyter-tensorboard 
# pip install git+https://github.com/cliffwoolley/jupyter_tensorboard.git
# pip install git+https://github.com/chaoleili/jupyterlab_tensorboard.git  死ぬ

# Escが効きすぎる https://github.com/jupyterlab-contrib/jupyterlab-vim/issues/31#issue-837847379
pip install jupyterlab_vim
pip install jupyterlab-vimrc #  C-, -> vimrcに {"unnamedplus": true}
pip install ipyfilechooser
pip install jupyterlab_widgets
jupyter labextension install jupyterlab-plotly
jupyter labextension install ipycanvas