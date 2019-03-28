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
