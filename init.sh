export ADMIN_USER='admin'
export ADMIN_PASSWORD='admin'
export ADMIN_PASSWORD_HASH='$2a$14$1l.IozJx7xQRVmlkEQ32OeEEfP5mRxTpbDTCTcXRqn19gXD8YK1pO'

sed -i "s|ADMIN_USER|${ADMIN_USER}|g" base/prometheus/prometheus.yml && sed -i "s|ADMIN_PASSWORD|${ADMIN_PASSWORD}|g" base/prometheus/prometheus.yml
#sed -i '' -e "s|ADMIN_USER|${ADMIN_USER}|g" base/prometheus/prometheus.yml && sed -i '' -e "s|ADMIN_PASSWORD|${ADMIN_PASSWORD}|g" base/prometheus/prometheus.yml   # for mac