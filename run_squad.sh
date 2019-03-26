#!/usr/bin/env bash
python run_squad.py
python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/output/predictions.json' --na-prob-file ./data/squad/output/null_odds.json

# original setting:
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
#   "best_exact": 72.83753053145793,
#   "best_exact_thresh": -5.559882640838623,
#   "best_f1": 76.10335982008996,
#   "best_f1_thresh": -4.95320200920105
# }
