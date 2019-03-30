#!/usr/bin/env bash
python run_squad.py \
--vocab_file=./data/pretrained_model/uncased_base/vocab.txt \
--bert_config_file=./data/pretrained_model/uncased_base/bert_config.json \
--init_checkpoint=./data/pretrained_model/uncased_base/bert_model.ckpt \
--do_train=True \
--train_file=./data/squad/train-v2.0.json \
--do_predict=True \
--predict_file=./data/squad/dev-v2.0.json \
--train_batch_size=16 \
--learning_rate=5e-5 \
--num_train_epochs=3.0 \
--max_seq_length=290 \
--doc_stride=128 \
--output_dir=./data/squad/embed+layer-1 \
--version_2_with_negative=True \
--layer_used=-1 \
--max_answer_length=20 \
--null_score_diff_threshold=0.0 \
--use_pretrained_embed=True

:<<annotation
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
annotation
