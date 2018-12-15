wget http://ai.stanford.edu/~amaas/data/sentiment/aclImdb_v1.tar.gz
tar -xzf aclImdb_v1.tar.gz

rm -rf aclImdb/train/unsup/1*
rm -rf aclImdb/train/unsup/2*
rm -rf aclImdb/train/unsup/3*
rm -rf aclImdb/train/unsup/4*
rm -rf aclImdb/train/unsup/5*

mv aclImdb/train/unsup aclImdb/
mv aclImdb/train/*unsup* aclImdb/
