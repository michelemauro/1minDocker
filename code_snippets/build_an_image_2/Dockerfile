ARG CONDA_VER=latest
ARG MAMBA_VER=latest

FROM mambaorg/micromamba:${MAMBA_VER} as mambabase

FROM conda/miniconda3:${CONDA_VER} 

COPY --from=mambabase /usr/bin/micromamba /usr/bin/

WORKDIR /data_science/

RUN mkdir -p /data_science/installations/

COPY ./conda_deps_?.sh /data_science/installations/

RUN bash /data_science/installations/conda_deps_1.sh

ARG BUILD_AI="False"

RUN if [ "$BUILD_AI" = "True" ]; bash /data_science/installations/conda_deps_2.sh; \
    elif [ "$BUILD_AI" = "False" ]; then echo "No AI environment will be built"; \
    else echo "BUILD_AI should be either True or False: you passed an invalid value, thus no AI environment will be built"; fi

CMD ["/bin/bash"]