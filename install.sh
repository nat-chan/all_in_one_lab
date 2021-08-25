#!/bin/bash

# https://github.com/krassowski/jupyterlab-lsp#installation
conda install -y -c conda-forge 'jupyterlab>=2,<2.1.0a0'
pip install jupyter-lsp
conda install -y -c conda-forge nodejs
jupyter labextension install @krassowski/jupyterlab-lsp
conda install -c conda-forge python-language-server

# https://github.com/chaoleili/jupyterlab_tensorboard#development
pip install jupyter-tensorboard
# jupyter labextension install jupyterlab_tensorboard # not for jupyterlab 2
git clone https://github.com/chaoleili/jupyterlab_tensorboard
cd jupyterlab_tensorboard
    npm install
    npm run build
    jupyter labextension link .
cd -; rm -rf jupyterlab_tensorboard

# https://github.com/jwkvam/jupyterlab-vim/pull/115
git clone https://github.com/axelfahy/jupyterlab-vim -b jlab2.0
cd jupyterlab-vim
    jlpm install
    jlpm run build
    jupyter labextension link .
cd -; rm -rf jupyterlab-vim

# ipycanvas
jupyter labextension install @jupyter-widgets/jupyterlab-manager ipycanvas
# https://anaconda.org/conda-forge/ipycanvas
conda install -c conda-forge ipycanvas


conda install -c conda-forge appmode

# update all extension
jupyter labextension update --all

## new lab3
exit
conda install -y -c conda-forge jupyterlab=3 ipycanvas appmode jupyterlab-lsp
pip install git+https://github.com/cliffwoolley/jupyter_tensorboard.git
conda install -y -c conda-forge 'nodejs>=12.0.0' 
pip install git+https://github.com/chaoleili/jupyterlab_tensorboard.git
pip install jupyterlab_vim
pip install ipyfilechooser
pip install jupyterlab_widgets
jupyter labextension install jupyterlab-plotly