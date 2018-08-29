#!/bin/bash
# Check ceph
docker exec demo sh -c 'ceph osd lspools'
# Create a pool name is "mypool" and pg_num is 64
docker exec demo sh -c 'ceph osd pool create mypool 64'
# Create ceph image "myimage" size 20G.
docker exec demo sh -c 'rbd create mypool/myimage --size 20480'
