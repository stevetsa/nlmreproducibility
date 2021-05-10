  
# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

# Ubuntu 16.04 (xenial) from 2018-02-28
# https://github.com/docker-library/official-images/commit/8728671fdca3dfc029be4ab838ab5315aa125181
FROM jupyter/minimal-notebook:dfcb043bd887

# Get notebooks
WORKDIR  /home/$NB_USER/work
RUN git clone https://github.com/stevetsa/nlmreproducibility.git
WORKDIR /home/$NB_USER/work/nlmreproducibility

RUN pip install RISE
RUN jupyter-nbextension install rise --py --sys-prefix

RUN pip install ipympl
# If using JupyterLab
# Install nodejs: https://nodejs.org/en/download/
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install jupyter-matplotlib
RUN jupyter labextension install jupyterlab_3dmol
