#/bin/sh

# Copies over files from the dev VM into the git repo
base=/home/cloud/git/cloudmatrix

rm -r $base/home/cloud/test-image1
rm -r $base/home/cloud/test-image2
cp -r /home/cloud/test-image1 $base/home/cloud
cp -r /home/cloud/test-image2 $base/home/cloud

rm -r $base/home/cloud/bin
cp -r /home/cloud/bin $base/home/cloud

cp /etc/hosts $base/etc
cp /etc/dnsmasq.conf $base/etc
cp /etc/default/docker $base/etc/default
cp /etc/default/varnish $base/etc/default
cp /etc/network/interfaces $base/etc/network
cp /etc/varnish/default.vcl $base/etc/varnish
