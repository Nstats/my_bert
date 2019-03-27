#!/usr/bin/env bash
python run_squad.py \
--vocab_file=./data/pretrained_model/uncased_base/vocab.txt \
--bert_config_file=./data/pretrained_model/uncased_base/bert_config.json \
--init_checkpoint=./data/pretrained_model/uncased_base/bert_model.ckpt \
--do_train=True \
--train_file=./data/squad/train-v2.0.json \
--do_predict=True \
--predict_file=./data/squad/dev-v2.0.json \
--train_batch_size=12 \
--learning_rate=3e-5 \
--num_train_epochs=2.0 \
--max_seq_length=300 \
--doc_stride=128 \
--output_dir=./data/squad/output_layer-1 \
--version_2_with_negative=True \
--layer_used=-1 \
--max_answer_length=20 \
--null_score_diff_threshold=0.0

python run_squad.py \
--vocab_file=./data/pretrained_model/uncased_base/vocab.txt \
--bert_config_file=./data/pretrained_model/uncased_base/bert_config.json \
--init_checkpoint=./data/pretrained_model/uncased_base/bert_model.ckpt \
--do_train=True \
--train_file=./data/squad/train-v2.0.json \
--do_predict=True \
--predict_file=./data/squad/dev-v2.0.json \
--train_batch_size=12 \
--learning_rate=3e-5 \
--num_train_epochs=2.0 \
--max_seq_length=300 \
--doc_stride=128 \
--output_dir=./data/squad/output_layer-4 \
--version_2_with_negative=True \
--layer_used=-4 \
--max_answer_length=20 \
--null_score_diff_threshold=0.0

python run_squad.py \
--vocab_file=./data/pretrained_model/uncased_base/vocab.txt \
--bert_config_file=./data/pretrained_model/uncased_base/bert_config.json \
--init_checkpoint=./data/pretrained_model/uncased_base/bert_model.ckpt \
--do_train=True \
--train_file=./data/squad/train-v2.0.json \
--do_predict=True \
--predict_file=./data/squad/dev-v2.0.json \
--train_batch_size=12 \
--learning_rate=3e-5 \
--num_train_epochs=2.0 \
--max_seq_length=300 \
--doc_stride=128 \
--output_dir=./data/squad/output_layer-6 \
--version_2_with_negative=True \
--layer_used=-6 \
--max_answer_length=20 \
--null_score_diff_threshold=0.0

python run_squad.py \
--vocab_file=./data/pretrained_model/uncased_base/vocab.txt \
--bert_config_file=./data/pretrained_model/uncased_base/bert_config.json \
--init_checkpoint=./data/pretrained_model/uncased_base/bert_model.ckpt \
--do_train=True \
--train_file=./data/squad/train-v2.0.json \
--do_predict=True \
--predict_file=./data/squad/dev-v2.0.json \
--train_batch_size=12 \
--learning_rate=3e-5 \
--num_train_epochs=2.0 \
--max_seq_length=300 \
--doc_stride=128 \
--output_dir=./data/squad/output_layer-8 \
--version_2_with_negative=True \
--layer_used=-8 \
--max_answer_length=20 \
--null_score_diff_threshold=0.0

python run_squad.py \
--vocab_file=./data/pretrained_model/uncased_base/vocab.txt \
--bert_config_file=./data/pretrained_model/uncased_base/bert_config.json \
--init_checkpoint=./data/pretrained_model/uncased_base/bert_model.ckpt \
--do_train=True \
--train_file=./data/squad/train-v2.0.json \
--do_predict=True \
--predict_file=./data/squad/dev-v2.0.json \
--train_batch_size=12 \
--learning_rate=3e-5 \
--num_train_epochs=2.0 \
--max_seq_length=300 \
--doc_stride=128 \
--output_dir=./data/squad/output_layer-10 \
--version_2_with_negative=True \
--layer_used=-10 \
--max_answer_length=20 \
--null_score_diff_threshold=0.0

# python ./data/squad/evaluate-v2.0.py './data/squad/dev-v2.0.json' './data/squad/output/predictions.json' \
# --na-prob-file ./data/squad/output/null_odds.json

# use model.get_all_encoder_layers()[-1]
# {
#   "exact": 72.71119346416239,
#   "f1": 75.90823049017881,
#   "total": 11873,
#   "HasAns_exact": 72.35155195681511,
#   "HasAns_f1": 78.75479429991447,
#   "HasAns_total": 5928,
#   "NoAns_exact": 73.06980656013457,
#   "NoAns_f1": 73.06980656013457,
#   "NoAns_total": 5945,
#   "best_exact": 73.57870799292512,
#   "best_exact_thresh": -2.757696747779846,
#   "best_f1": 76.40278473556499,
#   "best_f1_thresh": -1.3150174617767334
# }


# use model.get_all_encoder_layers()[-3]