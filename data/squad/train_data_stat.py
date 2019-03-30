import numpy as np
import json
from nltk.tokenize import word_tokenize

squad2_context_len = []
squad2_ques_len = []
squad2_ans_len = []
file = json.load(open(r'./train-v2.0.json', 'r', encoding='utf-8'))
for data in file['data']:
    for para in data['paragraphs']:
        context = word_tokenize(para['context'])
        squad2_context_len.append(context.__len__())
        for qas in para['qas']:
            ques = word_tokenize(qas['question'])
            squad2_ques_len.append(ques.__len__())
            for ans in qas['answers']:
                ans_text = word_tokenize(ans['text'])
                squad2_ans_len.append(ans_text.__len__())

print([np.percentile(squad2_context_len, 60 + 2 * p) for p in range(21)])
print([np.percentile(squad2_ques_len, 60 + 2 * p) for p in range(21)])
print([np.percentile(squad2_ans_len, 60 + 2 * p) for p in range(21)])


# context_len: [136.0, 139.0, 142.0, 144.0, 148.0, 151.0, 154.0, 158.0, 162.0, 167.0, 172.0, 177.0, 183.0, 190.0, 198.0,
# 207.0, 218.0, 231.0, 251.0, 283.3199999999997, 766.0]
# ques_len: [11.0, 12.0, 12.0, 12.0, 12.0, 12.0, 13.0, 13.0, 13.0, 13.0, 14.0, 14.0, 14.0, 15.0, 15.0, 16.0, 16.0, 17.0,
# 18.0, 20.0, 60.0]
# ans_len: [3.0, 3.0, 3.0, 3.0, 3.0, 3.0, 3.0, 4.0, 4.0, 4.0, 4.0, 5.0, 5.0, 6.0, 6.0, 7.0, 8.0, 10.0, 12.0, 17.0, 46.0]
