#!/bin/bash
#$ -cwd
#$ -pe smp 2
#$ -l h_rt=12:0:0
#$ -l h_vmem=4G
# Load ability to use Python
module load python
# Activate virtualenv
source myenv/bin/activate
# Run experiments_store
python3 run_experiment.py --num_episodes 100 --agent FlawedAgent --agents MCTSAgent --mcts_type ddd
python3 run_experiment.py --num_episodes 100 --agent FlawedAgent --agents MCTSAgent --mcts_type eee
python3 run_experiment.py --num_episodes 100 --agent FlawedAgent --agents MCTSAgent --mcts_type ggg
deactivate