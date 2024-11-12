eval "$(conda shell.bash hook)"

micromamba create \
    python_ai \
    -y \
    -c conda-forge \
    -c bioconda \
    python=3.11

conda activate python_ai

micromamba install \
    -y \
    -c conda-forge \
    -c pytorch \
    transformers pytorch tensorflow langchain langchain-core langchain-community gradio

conda deactivate