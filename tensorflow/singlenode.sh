#!/bin/bash

#PBS -q cpu
#PBS -l ncpus=32
#PBS -l mem=50GB

# environment
module load scientific/tensorflow/2.12.0

# set thread number to the cpu one
export OMP_NUM_THREADS=${NCPUS}
export TF_NUM_INTEROP_THREADS=${NCPUS}
export TF_NUM_INTRAOP_THREADS=${NCPUS}

# run
cd ${PBS_O_WORKDIR}
python singlenode.py
