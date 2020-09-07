#!/bin/bash
conda create --name pytorch160_pyG ## for the sysadmin
conda activate pytorch160_pyG

conda install h5py jupyter matplotlib nbconvert numba numpy pandas pip scikit-learn seaborn 
conda install -c conda-forge awkward-numba=0.13.0
conda install pytorch=1.6.0 torchvision cudatoolkit=10.2 -c pytorch

TORCH=1.6.0
CUDA=cu102
pip install torch-scatter==latest+${CUDA} -f https://pytorch-geometric.com/whl/torch-${TORCH}.html
pip install torch-sparse==latest+${CUDA} -f https://pytorch-geometric.com/whl/torch-${TORCH}.html
pip install torch-cluster==latest+${CUDA} -f https://pytorch-geometric.com/whl/torch-${TORCH}.html
pip install torch-spline-conv==latest+${CUDA} -f https://pytorch-geometric.com/whl/torch-${TORCH}.html

