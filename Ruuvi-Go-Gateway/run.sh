#!/bin/sh
echo "-----------------Install JQ - Needs to be Added to main image in the future----------"

apk add jq

echo "-----------------------Loading Ruuvi Go Gateway Config----------------------------"

# Create main config
GW_MAC="$(jq -r '.gw_mac' "/data/options.json")"
BROKER_URL="$(jq -r '.broker_url' "/data/options.json")"
USER_NAME="$(jq -r '.user_name' "/data/options.json")"
PASSWORD="$(jq -r '.password' "/data/options.json")"

echo ${GW_MAC}
echo ${BROKER_URL}

# \b matches for word boundary
# -i changes the file in-place
sed -i "s~\bGW_MAC\b~${GW_MAC}~g" /config.yml
sed -i "s~\bMQQT_BROKER\b~${BROKER_URL}~g" /config.yml
sed -i "s~\bUSER_NAME\b~${USER_NAME}~g" /config.yml
sed -i "s~\bPASSWORD\b~${PASSWORD}~g" /config.yml

echo "---------------------------Starting Gateway Now-----------------------------------"

ruuvi-go-gateway


