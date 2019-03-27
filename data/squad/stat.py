import numpy as np
import json

squad2_len = []
file = json.load(open(r'./dev-v2.0.json', 'r', encoding='utf-8'))
for data in file['data']:
    for para in data['paragraphs']:
        context = para['context']
        squad2_len.append(context.__len__())
print([np.percentile(squad2_len, 60 + 2 * p) for p in range(21)])

# [784.8, 799.86, 814.0, 832.0, 844.0400000000001, 868.0999999999999, 883.0, 910.44, 939.28, 969.34, 992.0, 1024.0,
# 1050.52, 1082.58, 1133.5600000000004, 1180.4, 1230.0, 1335.419999999998, 1492.1599999999992, 1841.860000000001,
# 4063.0]
