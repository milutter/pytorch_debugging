#!/usr/bin/env bash

echo ""
echo "##############################################"
echo "Default Configuration:"
python mem_leak_multiplication.py

echo "##############################################"
echo "MKL_DISABLE_FAST_MM=1:"
export MKL_DISABLE_FAST_MM=1
python mem_leak_multiplication.py

echo "##############################################"
echo "MKL_DISABLE_FAST_MM=0 & OMP_NUM_THREADS=4:"
export MKL_DISABLE_FAST_MM=0
export OMP_NUM_THREADS=4
python mem_leak_multiplication.py

