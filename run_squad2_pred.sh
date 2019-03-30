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
  "output_layer": -1,
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
  "output_layer": -1-2
  "exact": 73.42710351217048,
  "f1": 76.48971752293548,
  "total": 11873,
  "HasAns_exact": 71.12010796221323,
  "HasAns_f1": 77.25411878370659,
  "HasAns_total": 5928,
  "NoAns_exact": 75.72750210260723,
  "NoAns_f1": 75.72750210260723,
  "NoAns_total": 5945,
  "best_exact": 73.48606081024172,
  "best_exact_thresh": 0.8595569133758545,
  "best_f1": 76.54867482100651,
  "best_f1_thresh": 0.8595569133758545
}
{
  "output_layer": -1,
  "exact": 72.66908110839721,
  "f1": 75.87298485610012,
  "total": 11873,
  "HasAns_exact": 72.89136302294197,
  "HasAns_f1": 79.30835850142991,
  "HasAns_total": 5928,
  "NoAns_exact": 72.44743481917578,
  "NoAns_f1": 72.44743481917578,
  "NoAns_total": 5945,
  "best_exact": 73.36814621409921,
  "best_exact_thresh": -1.9692068099975586,
  "best_f1": 76.2297147682895,
  "best_f1_thresh": -1.9602203369140625
}
{
  "output_layer": -4,
  "exact": 69.35904994525394,
  "f1": 72.49363576226341,
  "total": 11873,
  "HasAns_exact": 68.42105263157895,
  "HasAns_f1": 74.69921346244139,
  "HasAns_total": 5928,
  "NoAns_exact": 70.29436501261564,
  "NoAns_f1": 70.29436501261564,
  "NoAns_total": 5945,
  "best_exact": 70.2097195317106,
  "best_exact_thresh": -2.022610664367676,
  "best_f1": 72.89531306824396,
  "best_f1_thresh": -1.6614210605621338
}
{
  "output_layer": -6,
  "exact": 67.02602543586288,
  "f1": 70.03623570657642,
  "total": 11873,
  "HasAns_exact": 66.2280701754386,
  "HasAns_f1": 72.25712323619764,
  "HasAns_total": 5928,
  "NoAns_exact": 67.82169890664424,
  "NoAns_f1": 67.82169890664424,
  "NoAns_total": 5945,
  "best_exact": 68.05356691653331,
  "best_exact_thresh": -1.950791358947754,
  "best_f1": 70.64116923238029,
  "best_f1_thresh": -1.8559441566467285
}
annotation
