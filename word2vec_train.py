import numpy as np
from gensim.models import Word2Vec
import tokenization
from run_squad import read_squad_examples
import tensorflow as tf
import json


size = 768
train_dir = './data/squad/dev-v2.0.json'
vocab_dir = './data/pretrained_model/uncased_base/vocab.txt'
output_dir = './data/squad/word2vec_embed.txt'

tokenizer = tokenization.FullTokenizer(vocab_file=vocab_dir, do_lower_case=True)

with tf.gfile.Open(train_dir, "r") as reader:
    input_data = json.load(reader)["data"]

def is_whitespace(c):
    if c == " " or c == "\t" or c == "\r" or c == "\n" or ord(c) == 0x202F:
        return True
    return False

examples = []
for entry in input_data:
    for paragraph in entry["paragraphs"]:
        paragraph_text = paragraph["context"]
        doc_tokens = []
        char_to_word_offset = []
        prev_is_whitespace = True
        for c in paragraph_text:
            if is_whitespace(c):
                prev_is_whitespace = True
            else:
                if prev_is_whitespace:
                    doc_tokens.append(c)
                else:
                    doc_tokens[-1] += c
                prev_is_whitespace = False
            char_to_word_offset.append(len(doc_tokens) - 1)
        temp = []
        for token in doc_tokens:
            for ele in tokenizer.tokenize(token):
                temp.append(ele)
        examples.append(temp)

# print(examples[0])
# ['the', 'norman', '##s', '(', 'norman', ':', 'no', '##ur', '##man', '##ds', ';']

model = Word2Vec(sentences=examples, size=size, min_count=1, workers=6)
with open(output_dir, 'w', encoding='utf-8') as fout:
    with open(vocab_dir, 'r', encoding='utf-8') as vocab:
        for ele in vocab.readlines():
            word = ele.splitlines()[0]
            if word in model:
                for num in model[word].tolist():
                    fout.write(str(num)+' ')
                fout.write('\n')
            else:
                for num in np.random.uniform(-1, 1, size).tolist():
                    fout.write(str(num)+' ')
                fout.write('\n')
