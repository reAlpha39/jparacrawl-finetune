#!/bin/sh

# download pre-trained model
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet \--save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1MwdV19hCdwoR_ZTvRiMESjU705HfTaDU' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1MwdV19hCdwoR_ZTvRiMESjU705HfTaDU" -O big.tar.gz && rm -rf /tmp/cookies.txt
tar xzvf big.tar.gz
rm big.tar.gz
mv big ./pretrained_model_jaen