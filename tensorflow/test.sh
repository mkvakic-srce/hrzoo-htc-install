#!/bin/bash

#PBS -l ncpus=1

# environment
module load scientific/tensorflow/2.12.0
cd ${PBS_O_WORKDIR}
python test.py
