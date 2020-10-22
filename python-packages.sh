#!/bin/bash
set -e -x

sudo -s

# install python 3.6
add-apt-repository -y ppa:deadsnakes/ppa
apt update
apt install -y python3.6
apt install -y python3.6-dev
apt install -y libcairo2-dev

rm /usr/bin/python3
ln -s /usr/bin/python3.6 /usr/bin/python3

# install packages
python3 -m pip install --upgrade pip setuptools
python3 -m pip install pypandoc
python3 -m pip install PyYAML
python3 -m pip install pandas==1.0.5 kmodes numpy metaphone unidecode StringDist rapidfuzz nltk phonenumbers python-dateutil geotext==0.4.0 spacy sklearn
python3 -m pip install py4j==0.10.9.1 pyhocon pyspark==3.0.1 wordninja pyspellchecker cleanco gensim scipy ipython jupyter sympy nose python-louvain
python3 -m pip install -force-reinstall --upgrade requests requests_toolbelt pyOpenSSL cryptography adal
python3 -m pip install six pyasn1-modules -U
python3 -m pip install pyap pyarrow==0.15.1 zipp==1.0.0 pycairo==1.13.4 recordlinkage
python3 -m spacy download en_core_web_sm
python3 -m nltk.downloader punkt
mv -v /root/nltk_data/ /usr/share || true
python3 -m nltk.downloader averaged_perceptron_tagger
python3 -m nltk.downloader stopwords
