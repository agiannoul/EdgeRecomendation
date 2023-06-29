# Enhanced Edge Recommendation, a case study:  predicting links in Wikipedia sites

Implementation of the techniques presented in the paper "Enhanced Edge Recommendation, a case study:  predicting links in Wikipedia sites" for the competition: https://www.kaggle.com/competitions/dsaa-2023-competition

## Installation

The preferred way to install requirements is via anaconda environment:

```bash
conda create -n edgerecom
conda activate edgerecom
conda install pip
pip install -r requirements.txt
conda install jupyter                # install jupyter + notebook
```
Installing approximate nearest neighbors Facebook research indexer (pysparn):
```bash
git clone https://github.com/facebookresearch/pysparnn.git
cd pysparnn
python setup.py install
```

Open jupyter notebooke
```bash
cd ..
jupyter-notebook
```
## Usage

**D.ipyndb** : Implementation for TF-IDF vector creation using description and prediction based on cosine similarity (presented in paper as D)

**G.ipyndb** : Solution based on graph metrics as presented in paper with name G.

**EG.ipyndb** : Solution using enhanced graph (Graph after adding edges based on description similarities) presented in paper as EG.

**EG_or_D.ipyndb** : Solution using enhanced graph predictions and D predictions with or policy (to run the full pipeline is required to run frist the D.ipyndb and EG.ipyndb pipelines first).

Finally, for **fast reproducibility** of the EG_or_D results use the **EG_or_D_usign_pre_calculated_vectors.ipyndb** which loads pre calculated vectors (from EG and D).
