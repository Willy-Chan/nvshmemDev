

# Basically you don't have sudo on the cluster but you still want to make install something

# set NVSHMEM_PREFIX, this is configured by the nvshmem pre-build cmake to contain the installed library
# cmake the nvshmem folder
# make -j -DNVSHMEM_PREFIX="/path/to/prefix/install/folder" in the nvshmem folder
# make install in the nvshmem folder, shouldn't give you any errors


# REMEMBER TO EXPORT NVSHMEM_PREFIX!!!


unset PYTHONPATH

# export PYTHONPATH=/lustre/fsw/portfolios/coreai/projects/coreai_libraries_nvshmem/wilchan/repo/pytorch:$PYTHONPATH
# export PYTHONPATH=/lustre/fsw/portfolios/coreai/projects/coreai_libraries_nvshmem/wilchan/repo/ninja:$PYTHONPATH
export NVSHMEM_PREFIX=/lustre/fsw/portfolios/coreai/projects/coreai_libraries_nvshmem/wilchan/repo/nvshmem_install

# cmake \
#     -DNVSHMEM_PREFIX=/opt/nvshmem-3.2.5 \
#     -DCMAKE_CUDA_ARCHITECTURES=90a \
#     -DNVSHMEM_MPI_SUPPORT=1 \
#     -DNVSHMEM_PMIX_SUPPORT=0 \
#     -DNVSHMEM_LIBFABRIC_SUPPORT=0 \
#     -DNVSHMEM_IBRC_SUPPORT=1 \
#     -DNVSHMEM_IBGDA_SUPPORT=1 \
#     -DNVSHMEM_BUILD_TESTS=1 \
#     -DNVSHMEM_BUILD_EXAMPLES=1 \
#     -DNVSHMEM_BUILD_HYDRA_LAUNCHER=1 \
#     -DNVSHMEM_BUILD_TXZ_PACKAGE=1 \
#     ..

# make -j
# make install
