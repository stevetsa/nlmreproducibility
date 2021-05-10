FROM jupyter/minimal-notebook:dfcb043bd887

# Get notebooks
WORKDIR  /home/$NB_USER/work
RUN git clone https://github.com/stevetsa/nlmreproducibility.git
WORKDIR /home/$NB_USER/work/nlmreproducibility

RUN pip install RISE
RUN jupyter-nbextension install rise --py --sys-prefix
RUN apt install --fix-broken
RUN pip install ipympl
# If using JupyterLab
# Install nodejs: https://nodejs.org/en/download/
RUN apt-get update && apt-get -yq dist-upgrade \
 && apt-get install -yq --no-install-recommends \
    wget \
    bzip2 \
    ca-certificates \
    sudo \
    locales \
    fonts-liberation \
###
    openjdk-8-jdk \
    git \
    curl \
###
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
 
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install jupyter-matplotlib
RUN jupyter labextension install jupyterlab_3dmol
