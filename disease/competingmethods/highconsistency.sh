#!/bin/bash
#SBATCH --mem=30G 
#SBATCH --partition=chsi-gpu
ml Python-GPU/3.7.6
for l in 0.01 0.001 0.0001 0.00001
do
mkdir /hpc/group/jilab/zj/gptimage/OCT/run//$l
for k in `seq 1 5`
do
mkdir /hpc/group/jilab/zj/gptimage/OCT/run//$l/$k
for i in `ls /hpc/group/jilab/zj/gptimage/code`
do
python /hpc/group/jilab/zj/gptimage/code/$i /hpc/group/jilab/zj/gptimage/OCT/train//$k /hpc/group/jilab/zj/gptimage/OCT/test/ /hpc/group/jilab/zj/gptimage/OCT/run//$l/$k/ $l
done
done
done
