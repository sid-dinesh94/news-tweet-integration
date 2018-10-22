FROM jupyter/tensorflow-notebook

#Install Pytorch and FastAI
RUN pip install torch_nightly -f https://download.pytorch.org/whl/nightly/cpu/torch_nightly.html
RUN pip install fastai
RUN conda install --quiet --yes gensim pyldavis
RUN python -m spacy download en

USER root
RUN apt-get -y update
RUN apt-get -y install software-properties-common
#RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get -y install python3.6-dev
RUN apt-get install -y gcc unixodbc-dev

USER jovyan
RUN pip install pybind11
RUN pip install nmslib
RUN pip install tensorflow-hub
ADD . /home/jovyan/work
WORKDIR /home/jovyan/work