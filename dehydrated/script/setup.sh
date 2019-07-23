#!/bin/bash -e

apt-get update -qq

apt-get upgrade -y

echo "------------------------"
echo "Installing dependencies"
echo "------------------------"
apt-get install -y \
  build-essential \
  cron \
  curl \
  git \
  grep \
  libffi-dev \
  libssl-dev \
  openssl \
  python-minimal \
  python-dev \
  python-pip \
  rsyslog \
  sed

echo "------------------------"
echo "Installing dehydrated and lexicon"
echo "------------------------"
git clone --depth 1 https://github.com/lukas2511/dehydrated.git /srv/dehydrated
pip install requests[security] \
  dns-lexicon
mv /dehydrated.default.sh /srv/dehydrated/dehydrated.default.sh
chmod +x /srv/dehydrated/dehydrated.default.sh

echo "------------------------"
echo "Cleaning up"
echo "------------------------"
apt-get -q clean
rm -rf /var/lib/apt/list/*
