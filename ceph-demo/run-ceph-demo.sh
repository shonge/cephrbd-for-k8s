docker stop demo;
docker rm demo;
rm -rf /var/lib/ceph/
rm -rf /etc/ceph/
docker run -d \
--name demo   \
-e MON_IP=172.16.0.2 \
-e CEPH_PUBLIC_NETWORK=172.16.0.0/24 \
--restart=always \
--net=host    \
-v /var/lib/ceph:/var/lib/ceph \
-v /etc/ceph:/etc/ceph \
-e CEPH_DEMO_UID=test   \
-e CEPH_DEMO_ACCESS_KEY=test  \
-e CEPH_DEMO_SECRET_KEY=test  \
ceph/daemon:v3.0.5-stable-3.0-luminous-centos-7  \
demo
