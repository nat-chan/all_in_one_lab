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

# https://github.com/oschuett/appmode#installation
conda install -c conda-forge appmode

# update all extension
jupyter labextension update --all
