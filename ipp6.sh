
# STUFF TO ADD TO THE BASHRC
export CUDA_HOME=/nfs_mnt1/$USER/repo/downloads/cuda-12.9
export USR_HOME=/nfs_mnt1/$USER/
export RDMA_CORE_HOME=$USR_HOME/repo/downloads/rdma-core
export GDRCOPY_INSTALL=$USR_HOME/repo/gdrcopy/
export NCCL_HOME=$USR_HOME/repo/nccl/build

# export NVSHMEM_HOME=$USR_HOME/repo/nvshmem/build/
export NVSHMEM_HOME=$HOME/repo/test/lib/python3.12/site-packages/nvidia/nvshmem/
export NVSHMEM_PREFIX=$NVSHMEM_HOME

export NVSHMEM_MPI_SUPPORT=1
export NVSHMEM_SHMEM_SUPPORT=0
HYDRA_HOME=$USR_HOME/repo/downloads/bin

export NVCC_GENCODE="-gencode=arch=compute_90,code=sm_90;compute_89,code=sm_89;compute_80,code=sm_80;compute_86,code=sm_86"
export CMAKE_PREFIX_PATH=$NVSHMEM_HOME:$CMAKE_PREFIX_PATH

export LD_LIBRARY_PATH=${NVSHMEM_HOME}/lib:${NCCL_HOME}/lib:${MPI_HOME}/lib:${LD_LIBRARY_PATH}:${RDMA_CORE_HOME}/build/lib:${CUDA_HOME}/lib64:$HOME/repo/test/lib/python3.12/site-packages/nvidia/nvshmem/lib


export PATH=$HOME/repo/nvshmem_venv/bin:${MPI_HOME}/bin:/home/$USER/repo/downloads/bin:${CUDA_HOME}/bin:/lustre/fsw/coreai_libraries_nccl/benjaming/hpc_sdk/Linux_x86_64/2024/comm_libs/mpi/bin/:$PATH


export CPATH=${RDMA_CORE_HOME}/build/include/:${MPI_HOME}/include:${CUDA_HOME}/include:${NCCL_HOME}/include:${NVSHMEM_HOME}/include:$CPATH
export LIBRARY_PATH=$CUDA_HOME/lib64:$RDMA_CORE_HOME/build/lib:$LIBRARY_PATH
export C_INCLUDE_PATH=$CUDA_HOME/include:$RDMA_CORE_HOME/build/include:$C_INCLUDE_PATH
export CPP_INCLUDE_PATH=$CUDA_HOME/include:$RDMA_CORE_HOME/build/include:$CPP_INCLUDE_PATH
export PKG_CONFIG_PATH=$USR_HOME/repo/downloads/rdma-core/build/lib/pkgconfig
export LD_LIBRARY_PATH=$USR_HOME/repo/downloads/rdma-core/build/lib:$LD_LIBRARY_PATH
export LDFLAGS="-L$USR_HOME/repo/downloads/rdma-core/build/lib -L$CUDA_HOME/lib64"
export CFLAGS="-I$USR_HOME/repo/downloads/build/include -I${RDMA_CORE_HOME}/build/include/"
export CPPFLAGS="-I${RDMA_CORE_HOME}/build/include/"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH


export MPI=1
export MPI_HOME="/opt/mpi/openmpi-4.0.0"










# export CUDA_HOME=/nfs_mnt1/$USER/repo/downloads/cuda-12.9
# export USR_HOME=/nfs_mnt1/$USER/
# export RDMA_CORE_HOME=$USR_HOME/repo/downloads/rdma-core
# export GDRCOPY_INSTALL=$USR_HOME/repo/gdrcopy/
# export NCCL_HOME=$USR_HOME/repo/nccl/build
# # Compiled with ./configure --with-cuda=/usr/local/cuda --prefix=/nfs_mnt1/benjaming/repo/downloads
# # MPI_HOME=$USR_HOME/repo/downloads/
# export NVSHMEM_HOME=$USR_HOME/repo/nvshmem/build/
# export NVSHMEM_PREFIX=$NVSHMEM_HOME

# # export CUDA_HOME
# # export RDMA_CORE_HOME
# # export NCCL_HOME
# # export MPI_HOME

# export NVSHMEM_MPI_SUPPORT=1
# export NVSHMEM_SHMEM_SUPPORT=0
# HYDRA_HOME=$USR_HOME/repo/downloads/bin
# # A, L, H
# export NVCC_GENCODE="-gencode=arch=compute_90,code=sm_90;compute_89,code=sm_89;compute_80,code=sm_80;compute_86,code=sm_86"
# export CMAKE_PREFIX_PATH=$NVSHMEM_HOME:$CMAKE_PREFIX_PATH



# export LD_LIBRARY_PATH=${NVSHMEM_HOME}/lib:${NCCL_HOME}/lib:${MPI_HOME}/lib:$LD_LIBRARY_PATH:${RDMA_CORE_HOME}/build/lib:${CUDA_HOME}/lib64


# export PATH=$HOME/repo/nvshmem_venv/bin:${MPI_HOME}/bin:/home/$USER/repo/downloads/bin:${CUDA_HOME}/bin:/lustre/fsw/coreai_libraries_nccl/benjaming/hpc_sdk/Linux_x86_64/2024/comm_libs/mpi/bin/:$PATH


# setrunpath(){
# 	export PATH=/lustre/fsw/coreai_libraries_nccl/benjaming/nvhpc_2024_2411_Linux_x86_64_cuda_12.6/install_components/Linux_x86_64/24.11/comm_libs/mpi/bin:/home/benjaming/repo/downloads/bin:/lustre/fsw/coreai_libraries_nccl/toolkits/cuda-12.2/bin:/lustre/fsw/coreai_libraries_nccl/benjaming/repo/downloads/cmake-3.31.3-linux-x86_64/bin/:/lustre/fsw/coreai_libraries_nccl/benjaming/hpc_sdk/Linux_x86_64/2024/comm_libs/mpi/bin/:/home/benjaming/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/mpi/gcc/openmpi-4.1.5rc2/bin:
# }

# setpath(){
# 	export PATH=$HOME/repo/nvshmem_venv/bin:${MPI_HOME}/bin:/home/$USER/repo/downloads/bin:${CUDA_HOME}/bin:/lustre/fsw/coreai_libraries_nccl/benjaming/repo/downloads/cmake-3.31.3-linux-x86_64/bin/:/lustre/fsw/coreai_libraries_nccl/benjaming/hpc_sdk/Linux_x86_64/2024/comm_libs/mpi/bin/:$PATH
# }

# sethostfile(){
#     srun hostname > ~/hostfile.txt
# }

# export CPATH=${RDMA_CORE_HOME}/build/include/:${MPI_HOME}/include:${CUDA_HOME}/include:${NCCL_HOME}/include:${NVSHMEM_HOME}/include:$CPATH
# export LIBRARY_PATH=$CUDA_HOME/lib64:$RDMA_CORE_HOME/build/lib:$LIBRARY_PATH
# export C_INCLUDE_PATH=$CUDA_HOME/include:$RDMA_CORE_HOME/build/include:$C_INCLUDE_PATH
# export CPP_INCLUDE_PATH=$CUDA_HOME/include:$RDMA_CORE_HOME/build/include:$CPP_INCLUDE_PATH
# export PKG_CONFIG_PATH=$USR_HOME/repo/downloads/rdma-core/build/lib/pkgconfig
# export LD_LIBRARY_PATH=$USR_HOME/repo/downloads/rdma-core/build/lib:$LD_LIBRARY_PATH
# export LDFLAGS="-L$USR_HOME/repo/downloads/rdma-core/build/lib -L$CUDA_HOME/lib64"
# export CFLAGS="-I$USR_HOME/repo/downloads/build/include -I${RDMA_CORE_HOME}/build/include/"
# export CPPFLAGS="-I${RDMA_CORE_HOME}/build/include/"

# alias cmake="cmake -Wno-dev"

