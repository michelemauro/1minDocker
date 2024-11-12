eval "$(conda shell.bash hook)"

micromamba create \
    python_deps \
    -y \
    -c conda-forge \
    -c bioconda \
    python=3.10

conda activate python_deps

micromamba install \
    -y \
    -c bioconda \
    -c conda-forge \
    -c anaconda \
    -c plotly \
    pandas polars numpy scikit-learn scipy matplotlib seaborn plotly

conda deactivate

micromamba create \
    R \
    -y \
    -c conda-forge \
    r-base

conda activate R

micromamba install \
    -y \
    -c conda-forge \
    -c r \
    r-dplyr r-lubridate r-tidyr r-purrr r-ggplot2 r-caret

conda deactivate  