import pandas as pd

train_dir_csv = 'C:/MyProjects/my_bert/data/quaro/train.csv'
train_dir_tsv = 'C:/MyProjects/my_bert/data/quaro/train.tsv'
dev_dir_tsv = 'C:/MyProjects/my_bert/data/quaro/dev.tsv'

dev_size = 20000

df = pd.DataFrame(pd.read_csv(train_dir_csv, engine='python'))
df = df.sample(frac=1.0)
id = df['qid']
text = df['question_text'].fillna('').values
target = df['target']
size = df.shape[0]

ftrain = open(train_dir_tsv, 'w', encoding='utf-8')
fdev = open(dev_dir_tsv, 'w', encoding='utf-8')

for i in range(size):
    line = text[i].replace('\n', ' ', 100).replace('\t', ' ', 100)
    if i < dev_size:
        fdev.write(str(target[i])+'\t'+str(id[i])+'\t'+line+'\n')
    else:
        ftrain.write(str(target[i])+'\t'+str(id[i])+'\t'+line+'\n')

ftrain.close()
fdev.close()
