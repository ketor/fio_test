pool=$1
rbdname=$2
iodepth=$3
echo "======" $pool $rbdname $iodepth "======"
fio -ioengine=rbd -rw=randwrite -name=ebs  -pool=$pool -direct=1 -bs=4k -rbdname=$rbdname -iodepth=$iodepth -clientname=admin -runtime=60

