# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
    else
    color_prompt=
    fi
fi
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


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
# NEEDED: IN PYTHON 3.9 WE ARE USING (pip install nvshmem4py)'s LOCAL COPY OF NVSHMEM LOCATED HERE!!!
export LD_LIBRARY_PATH=/home/wilchan/.local/lib/python3.9/site-packages/nvidia/nvshmem/lib:$LD_LIBRARY_PATH


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

# needed in order to ignore some warnings
export IBV_CONFIG_DIR=$RDMA_CORE_HOME/build/etc/libibverbs.d


export PKG_CONFIG_PATH=$USR_HOME/repo/downloads/rdma-core/build/lib/pkgconfig
export LD_LIBRARY_PATH=$USR_HOME/repo/downloads/rdma-core/build/lib:$LD_LIBRARY_PATH
export LDFLAGS="-L$USR_HOME/repo/downloads/rdma-core/build/lib -L$CUDA_HOME/lib64"
export CFLAGS="-I$USR_HOME/repo/downloads/build/include"
alias cmake="cmake -Wno-dev"
export LIBRARY_PATH=$CUDA_HOME:$LIBRARY_PATH

# export PYTHONPATH=/lustre/fsw/portfolios/coreai/projects/coreai_libraries_nvshmem/wilchan/repo/pytorch:$PYTHONPATH
# export PYTHONPATH=/lustre/fsw/portfolios/coreai/projects/coreai_libraries_nvshmem/wilchan/repo/ninja:$PYTHONPATH
unset PYTHONPATH


export LIBRARY_PATH=$CUDA_HOME/lib64:$CUDA_HOME/lib64/stubs:$LIBRARY_PATH
export NVSHMEM_PREFIX=/lustre/fsw/portfolios/coreai/projects/coreai_libraries_nvshmem/wilchan/repo/nvshmem_install



