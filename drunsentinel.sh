#/sbin/runuser -l masternode -c 'export SENTINEL_CONFIG=/etc/masternodes/innova1_sentinel.conf; /usr/share/sentinelvenv/bin/python /usr/share/sentinel/bin/sentinel.py'
/sbin/runuser -l masternode -c 'cd /home/masternode/sentineldir/sentinel && ./venv/bin/python bin/sentinel.py'
