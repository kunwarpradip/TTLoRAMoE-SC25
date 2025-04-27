#!/bin/bash

batch_sizes=(1,2,4,8,16,32,64,128)
dataset="qnli"

for batch in "${batch_sizes[@]}"
do
    echo "Running reconstruction test with batch size $batch"
    python inference_comparison.py --batchsize $batch --dataset $dataset --test reconstruction

    echo "Running contraction test with batch size $batch"
    python inference_comparison.py --batchsize $batch --dataset $dataset --test contraction
done
