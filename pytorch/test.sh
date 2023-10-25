#!/bin/bash

#PBS -l ncpus=1

# environment
module load scientific/pytorch/2.0.0
cd ${PBS_O_WORKDIR:-""}
python test.py
