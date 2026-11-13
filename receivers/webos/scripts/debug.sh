#!/bin/bash

version=$(jq -r '.version' fcast-receiver/package.json)
scripts/build.sh
ares-install --device tv ./io.github.kdpkke.castorreceiver_${version}_all.ipk

ares-inspect --device tv -s io.github.kdpkke.castorreceiver.service &
sleep 6
ares-inspect --device tv --app io.github.kdpkke.castorreceiver
