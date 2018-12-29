import tensorflow as tf
import re

saver = tf.train.import_meta_graph('./bert_model.ckpt.meta')

sess = tf.Session()
saver.restore(sess, './bert_model.ckpt')

tvars = tf.trainable_variables()

for var in tvars:
    name = var.name
    m = re.match("^(.*):\\d+$", name)
    if m is not None:
        print('original name= ', name)
        name = m.group(1)
        print('m is not none:', name)
    else:
        print('m is none:', name)

sess.close()
