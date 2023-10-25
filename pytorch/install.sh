#!/bin/bash

# create & activate environment
source /apps/utils/miniforge3/bin/activate
conda create -n pytorch-2-0-0 python=3.10
conda activate pytorch-2-0-0

# install 
python -m pip install --upgrade pip
pip install torchvision==0.15.1
pip install transformers[torch]
pip install statsmodels
