#FROM jupyter/minimal-notebook:dfcb043bd887
FROM jupyter/pyspark-notebook:59c973d16bca


# Get notebooks
WORKDIR  /home/$NB_USER/work
RUN git clone https://github.com/stevetsa/nlmreproducibility.git
WORKDIR /home/$NB_USER/work/nlmreproducibility

RUN conda install -c conda-forge nodejs

RUN pip install --upgrade pip
RUN pip install mmtfPyspark
RUN pip install RISE
RUN jupyter-nbextension install rise --py --sys-prefix

RUN pip install ipympl
RUN pip install install-jdk
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install jupyter-matplotlib
RUN jupyter labextension install jupyterlab_3dmol
