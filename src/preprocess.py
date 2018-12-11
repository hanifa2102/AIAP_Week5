#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Dec 11 13:42:41 2018

@author: hanifa
"""

import os
from os import listdir
from os.path import isfile, join
import numpy as np  # a conventional alias
from sklearn.feature_extraction.text import CountVectorizer

def getFileNames(mypath):
    
    onlyfiles = [join(mypath, f)for f in listdir(mypath) if isfile(join(mypath, f))]
    return onlyfiles
    

if __name__=="__main__":
 
    mypath='/home/hanifa/workspace/AIAP/AIAP_Week5/aclImdb_v1/aclImdb/train/tt/'
    filenames=getFileNames(mypath)
    
    vectorizer = CountVectorizer(input='filename')               
    dtm = vectorizer.fit_transform(filenames)  # a sparse matrix 
    vocab = vectorizer.get_feature_names()
    
    type(dtm)                                         
    dtm = dtm.toarray()  # convert to a regular array 
    vocab = np.array(vocab)