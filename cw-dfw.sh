
# sinfo
# srun -N 1 -t 30 -p interactive --pty --exclusive --account coreai_libraries_nccl --gpus-per-node=2 bash -i
# module load python3
# module load openmpi
#
# *can now use pip*




export USR_HOME=/lustre/fsw/portfolios/coreai/projects/coreai_libraries_nvshmem/wilchan/

# using tarball for cuda-12.9
export CUDA_HOME=/lustre/fsw/portfolios/coreai/projects/coreai_libraries_nvshmem/wilchan/repo/downloads/cuda-12.9/

# https://openucx.readthedocs.io/en/master/running.html
export UCX_HOME=/lustre/fsw/portfolios/coreai/projects/coreai_libraries_nvshmem/wilchan/repo/downloads/ucx/

# https://github.com/linux-rdma/rdma-core
export RDMA_CORE_HOME=$USR_HOME/repo/downloads/rdma-core    # had a build issue...


# UNABLE TO INSTALL
export GDRCOPY_INSTALL=$USR_HOME/repo/gdrcopy/


export NCCL_HOME=$USR_HOME/repo/nccl/build

# Compiled with ./configure --with-cuda=/lustre/fsw/portfolios/coreai/projects/coreai_libraries_nccl/toolkits/cuda-12.2/ --prefix=/lustre/fsw/portfolios/coreai/projects/coreai_libraries_nvshmem/$USER/repo/downloads
export MPI_HOME=$USR_HOME/repo/downloads/
export NVSHMEM_HOME=$USR_HOME/repo/nvshmem/build/
export NVSHMEM_PREFIX=$NVSHMEM_HOME


# export CUDA_HOME
# export RDMA_CORE_HOME
# export NCCL_HOME
# export MPI_HOME
# export UCX_HOME

export NVSHMEM_MPI_SUPPORT=1
export NVSHMEM_SHMEM_SUPPORT=0
export HYDRA_HOME=$USR_HOME/repo/downloads/bin
export NVCC_GENCODE="-gencode=arch=compute_90,code=sm_90"
export CMAKE_PREFIX_PATH=$NVSHMEM_HOME:$CMAKE_PREFIX_PATH


export LD_LIBRARY_PATH=${NVSHMEM_HOME}/lib:${UCX_HOME}/lib:${NCCL_HOME}/lib:${MPI_HOME}/lib:${RDMA_CORE_HOME}/build/lib:${CUDA_HOME}/lib64


export PATH=$HOME/repo/nvshmem_venv/bin:${MPI_HOME}/bin:/home/$USER/repo/downloads/bin:${CUDA_HOME}/bin:/lustre/fsw/coreai_libraries_nccl/wilchan/hpc_sdk/Linux_x86_64/2024/comm_libs/mpi/bin/:$PATH

# setrunpath(){
# 	export PATH=/lustre/fsw/coreai_libraries_nccl/wilchan/nvhpc_2024_2411_Linux_x86_64_cuda_12.6/install_components/Linux_x86_64/24.11/comm_libs/mpi/bin:/home/wilchan/repo/downloads/bin:/lustre/fsw/coreai_libraries_nccl/toolkits/cuda-12.2/bin:/lustre/fsw/coreai_libraries_nccl/wilchan/repo/downloads/cmake-3.31.3-linux-x86_64/bin/:/lustre/fsw/coreai_libraries_nccl/wilchan/hpc_sdk/Linux_x86_64/2024/comm_libs/mpi/bin/:/home/wilchan/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/mpi/gcc/openmpi-4.1.5rc2/bin:
# }

# setpath(){
# 	export PATH=$HOME/repo/nvshmem_venv/bin:${MPI_HOME}/bin:/home/$USER/repo/downloads/bin:${CUDA_HOME}/bin:/lustre/fsw/coreai_libraries_nccl/wilchan/repo/downloads/cmake-3.31.3-linux-x86_64/bin/:/lustre/fsw/coreai_libraries_nccl/wilchan/hpc_sdk/Linux_x86_64/2024/comm_libs/mpi/bin/:$PATH
# }

# sethostfile(){
#     srun hostname > ~/hostfile.txt
# }

export CPATH=${RDMA_CORE_HOME}/build/include/:${MPI_HOME}/include:${CUDA_HOME}/include:${NCCL_HOME}/include:${NVSHMEM_HOME}/include:$CPATH


export PKG_CONFIG_PATH=$USR_HOME/repo/downloads/rdma-core/build/lib/pkgconfig
export LD_LIBRARY_PATH=$USR_HOME/repo/downloads/rdma-core/build/lib:$LD_LIBRARY_PATH
export LDFLAGS="-L$USR_HOME/repo/downloads/rdma-core/build/lib -L$CUDA_HOME/lib64"
export CFLAGS="-I$USR_HOME/repo/downloads/build/include"
alias cmake="cmake -Wno-dev"
export LIBRARY_PATH=$CUDA_HOME:$LIBRARY_PATH
