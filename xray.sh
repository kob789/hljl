#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a136fee2-7a34-060a-f892-f2e468680454"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

