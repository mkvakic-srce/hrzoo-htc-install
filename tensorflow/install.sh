#!/bin/bash

# create & activate environment
source /apps/utils/miniforge3/bin/activate
conda create -n tensorflow-2-12-0 python=3.10
conda activate tensorflow-2-12-0

# install 
python -m pip install --upgrade pip
pip install keras_nlp==0.4.1
pip install tensorflow==2.12.0
pip install statsmodels
