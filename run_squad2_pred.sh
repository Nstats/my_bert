#!/usr/bin/env bash

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/0_predictions.json' \
--na-prob-file './data/squad/layer-1/0_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/1_predictions.json' \
--na-prob-file './data/squad/layer-1/1_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/2_predictions.json' \
--na-prob-file './data/squad/layer-1/2_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/3_predictions.json' \
--na-prob-file './data/squad/layer-1/3_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/4_predictions.json' \
--na-prob-file './data/squad/layer-1/4_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/5_predictions.json' \
--na-prob-file './data/squad/layer-1/5_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/6_predictions.json' \
--na-prob-file './data/squad/layer-1/6_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/7_predictions.json' \
--na-prob-file './data/squad/layer-1/7_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/8_predictions.json' \
--na-prob-file './data/squad/layer-1/8_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/9_predictions.json' \
--na-prob-file './data/squad/layer-1/9_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/10_predictions.json' \
--na-prob-file './data/squad/layer-1/10_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/11_predictions.json' \
--na-prob-file './data/squad/layer-1/11_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/12_predictions.json' \
--na-prob-file './data/squad/layer-1/12_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/13_predictions.json' \
--na-prob-file './data/squad/layer-1/13_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/14_predictions.json' \
--na-prob-file './data/squad/layer-1/14_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/15_predictions.json' \
--na-prob-file './data/squad/layer-1/15_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/16_predictions.json' \
--na-prob-file './data/squad/layer-1/16_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/17_predictions.json' \
--na-prob-file './data/squad/layer-1/17_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/18_predictions.json' \
--na-prob-file './data/squad/layer-1/18_null_odds.json'

python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/layer-1/19_predictions.json' \
--na-prob-file './data/squad/layer-1/19_null_odds.json'

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
