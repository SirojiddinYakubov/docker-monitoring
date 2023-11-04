export ADMIN_USER='admin'
export ADMIN_PASSWORD='admin'

sed -i "s|ADMIN_USER|${ADMIN_USER}|g" base/prometheus/prometheus.yml && sed -i "s|ADMIN_PASSWORD|${ADMIN_PASSWORD}|g" base/prometheus/prometheus.yml
#sed -i '' -e "s|ADMIN_USER|${ADMIN_USER}|g" base/prometheus/prometheus.yml && sed -i '' -e "s|ADMIN_PASSWORD|${ADMIN_PASSWORD}|g" base/prometheus/prometheus.yml   # for mac