FROM nimmis/apache-php5

MAINTAINER nimmis <kjell.havneskold@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# add bugfixes to ICEcoder v4.4

ADD icecoder_v4.4.patch /

RUN wget https://icecoder.net/download-zip?version=4.4 -O /icecoder.zip && \
unzip -q /icecoder.zip -d /root/ && \
mv /root/ICE* /var/www/html/icecoder && \
cd /var/www/html && \
patch -p0 < /icecoder_v4.4.patch && \
chown -R www-data.www-data /var/www/html/icecoder && \
rm -f /icecoder.zip && \
rm -f /icecoder_v4.4.patch 

