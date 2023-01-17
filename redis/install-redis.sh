#！/bin/env/ bash
set -euxo pipefail

cd /opt/build-redis/redis-7.0.7
make -j4 &> /dev/null && make USE_SYSTEMD=yes install &> /dev/null
mkdir -p /var/log/redis && touch /var/log/redis/redis-server.log
echo "vm.overcommit_memory = 1" >> /etc/sysctl.conf
sysctl vm.overcommit_memory=1 &> /dev/null