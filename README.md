# Description

HS Explanation is the task of inferring a complete hybrid trajectory that is consistent with a sequence of observations collected from a hybrid system. 

This repository contains the benchmarks (models and instances) and code that are necessary to reproduce the results of our experimental evaluation. The repository is organized into notebooks as follows.

* Section 6.3:
  - DOMAIN - APPROACH: Code to reproduce the coverage results for the respective APPROACH and DOMAIN.
  - DOMAIN - Results Coverage: Code to generate the tables 2, 3, and 4.
  - Summary Coverage: Code to generate Figure 7.

* Section 6.4:
  - Quality Evolution: Code to reproduce the quality evolution analysis carried out on the Flight domain.
  - Results Quality Evolution: Code to generate figures 8 and 9.

The benchmarks folder contains all the models and instances used in our evaluation.

# Reproducing the experiments

Implemented in Python 3.10. Before running the notebooks, install the required packages:

~~~~
pip install -r requirements.txt
~~~~

In addition, the experiments involve several tools that must be installed and added to your PATH:

* ENHSP-20: <https://sites.google.com/view/enhsp/>
* UPMurphi: <https://github.com/gdellapenna/UPMurphi>
* HyComp: <http://hycomp.fbk.eu>
* DReach: <http://dreal.github.io/dReach/>
* Falstar: <https://github.com/ERATOMMSD/falstar>. Matlab/Simulink(2018) must be installed (<https://www.mathworks.com/>).
