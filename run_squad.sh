#!/usr/bin/env bash
python run_squad.py
python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/output/predictions.json'

# {
#   "exact": 71.9952834161543,
#   "f1": 75.63946351369651,
#   "total": 11873,
#   "HasAns_exact": 71.49122807017544,
#   "HasAns_f1": 78.79003884921,
#   "HasAns_total": 5928,
#   "NoAns_exact": 72.49789739276703,
#   "NoAns_f1": 72.49789739276703,
#   "NoAns_total": 5945
# }
