# TTLoRAMoE-SC25
[Paper Reference:] (https://arxiv.org/pdf/2504.21190)
<img src="images/logo.png" alt="Logo" width="200"/>

### Step 1: 
First create a virtual environment in the artifact folder that was cloned using git and follow the codes below:

`conda create --name ttloramoe python=3.11` this creates a virtual environment as ttloramoe

`conda activate ttloramoe` this activates the ttloramoe environment

`pip install pytorch-lightning pandas tensorly datasets transformers` this installs the required packages

`pip install transformers[torch] accelerate>=0.26.0`

### Step 2:
`python download_model.py` this downloads the llama3.2-1b model checkpoints and saves to your current local directory

#### Note:
All the required datasets are provided inside the datasets folder. There are 17 supported datasets. Moreover, the supported command line options for --dataset to run any of the below listed experiments (where
applicable) is:
`--dataset` [17 options]:
`mrpc, cola, sst2, rte, cb, sick, boolq, csqa, winogrande_l, scitail, imdb, cosmosqa, socialiqa, hellaswag, qnli, qqp, mnli`

Before running any experiments that are described below, the following setup should be completed step by step:
1. Allocate the GPU
2. Create the virtual environment and install required packages as mentioned above
3. Download the model as mentioned above
4. It’s ready to execute the experiments

#### Step 3: Inference Time Comparison between Conventional Reconstruction and Proposed Contraction Method
Inside the folder Artifact_1.1, the script in `inference_comparison.py` contains two TT-LoRA adaptation of loaded pre-trained model: conventional reconstruction and proposed contraction method.
