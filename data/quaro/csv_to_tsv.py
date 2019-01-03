import tensorflow as tf
import pandas as pd
import re

dev_size = 20000

train_dir_csv = './data/quaro/train.csv'
train_dir_tsv = './data/quaro/train.tsv'
dev_dir_tsv = './data/quaro/dev.tsv'


def remove_link_and_slash_split(sen):
    regex_link = r'(http|ftp|https):\/\/[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&amp;:/~\+#]*[\w\-\@?^=%&amp;/~\+#])?'
    regex_slash_3 = r'[a-zA-Z]{3,}/[a-zA-Z]{3,}/[a-zA-Z]{3,}'
    regex_slash_2 = r'[a-zA-Z]{3,}/[a-zA-Z]{3,}'
    sen, number = re.subn(regex_link, ' link ', sen)
    result = re.findall(regex_slash_3, sen, re.S)
    for word in result:
        new_word = word.replace('/', ' / ')
        sen = sen.replace(word, new_word)
    result = re.findall(regex_slash_2, sen, re.S)
    for word in result:
        new_word = word.replace('/', ' / ')
        sen = sen.replace(word, new_word)
    return sen


def remove_formula(sen):
    for i in range(100):
        judge1 = '[math]' in sen and '[/math]' in sen
        judge2 = '[math]' in sen and '[\math]'in sen
        judge3 = '[math]' in sen and '[math]'in sen.replace('[math]', '', 1)
        if judge1 or judge2:
            index1 = sen.find('[math]')
            index2 = max(sen.find('[\math]'), sen.find('[/math]'))+7
            (index1, index2) = (min(index1, index2), max(index1, index2))
            sen = sen.replace(sen[index1: index2], ' formula ')
        elif judge3:
            index1 = sen.find('[math]')
            index2 = sen.replace('[math]', '      ', 1).find('[math]') + 6
            sen = sen.replace(sen[index1: index2], ' formula ')
        else:
            break
    return sen


def preprocessing(file_dir):
    df = pd.DataFrame(pd.read_csv(file_dir, engine='python'))
    question_text = df['question_text'].fillna('').apply(
        lambda x: remove_link_and_slash_split(remove_formula(x))).values
    df['question_text'] = question_text

    df = df.sample(frac=1.0)
    dev_df = df[:dev_size]
    train_df = df[dev_size:]
    df_target_1 = train_df[train_df['target'] == 1]
    for i in range(14):
        train_df = train_df.append(df_target_1)
    train_df = train_df.sample(frac=1.0)

    return train_df, dev_df


train_df, dev_df = preprocessing(train_dir_csv)
id = train_df['qid']
text = train_df['question_text'].fillna('').values
target = train_df['target']
size = train_df.shape[0]

ftrain = open(train_dir_tsv, 'w', encoding='utf-8')
for i in range(size):
    line = text[i].replace('\n', ' ', 100).replace('\t', ' ', 100)
    ftrain.write(str(target[i])+'\t'+str(id[i])+'\t'+line+'\n')
ftrain.close()

id_dev = dev_df['qid']
dev_text = dev_df['question_text'].fillna('').values
dev_target = dev_df['target']
fdev = open(dev_dir_tsv, 'w', encoding='utf-8')
for i in range(dev_size):
    line = dev_text[i].replace('\n', ' ', 100).replace('\t', ' ', 100)
    fdev.write(str(target[i])+'\t'+str(id[i])+'\t'+line+'\n')
fdev.close()
