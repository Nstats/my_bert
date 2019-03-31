#!/usr/bin/env bash
python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/output_layer-1/predictions.json' \
--na-prob-file ./data/squad/output_layer-1/null_odds.json

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/output_layer-4/predictions.json' \
--na-prob-file ./data/squad/output_layer-4/null_odds.json

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/output_layer-6/predictions.json' \
--na-prob-file ./data/squad/output_layer-6/null_odds.json

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/output_layer-8/predictions.json' \
--na-prob-file ./data/squad/output_layer-8/null_odds.json

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/output_layer-10/predictions.json' \
--na-prob-file ./data/squad/output_layer-10/null_odds.json

:<<annotation
sorted by best f1 score:
{
  output_layer-1,
  "exact": 73.66293270445549,
  "f1": 77.1959730316822,
  "total": 11873,
  "HasAns_exact": 73.19500674763833,
  "HasAns_f1": 80.2712192653783,
  "HasAns_total": 5928,
  "NoAns_exact": 74.12952060555088,
  "NoAns_f1": 74.12952060555088,
  "NoAns_total": 5945,
  "best_exact": 74.83365619472754,
  "best_exact_thresh": -4.278260707855225,
  "best_f1": 77.92894528272473,
  "best_f1_thresh": -4.278260707855225
}
{
  untrainable word embed & output_layer-1
  "exact": 45.10233302450939,
  "f1": 46.65013728328673,
  "total": 11873,
  "HasAns_exact": 9.109311740890687,
  "HasAns_f1": 12.20935896836427,
  "HasAns_total": 5928,
  "NoAns_exact": 80.99243061396132,
  "NoAns_f1": 80.99243061396132,
  "NoAns_total": 5945,
  "best_exact": 50.08843594710688,
  "best_exact_thresh": -12.183106243610382,
  "best_f1": 50.08843594710688,
  "best_f1_thresh": -12.183106243610382
}

annotation
