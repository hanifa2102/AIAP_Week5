wget http://ai.stanford.edu/~amaas/data/sentiment/aclImdb_v1.tar.gz
tar -xzf aclImdb_v1.tar.gz

mv aclImdb/train/unsup aclImdb/
mv aclImdb/train/*unsup* aclImdb/

rm -rf aclImdb/unsup/1*
rm -rf aclImdb/unsup/2*
rm -rf aclImdb/unsup/3*
rm -rf aclImdb/unsup/4*
rm -rf aclImdb/unsup/5*


