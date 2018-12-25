import tensorflow as tf

saver = tf.train.import_meta_graph('./bert_model.ckpt.meta')

sess = tf.Session()
saver.restore(sess, './bert_model.ckpt')

for ele in tf.trainable_variables():
    print(ele)

sess.close()
