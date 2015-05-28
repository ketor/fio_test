blkdev=$1
iodepth=$2
fio -ioengine=libaio -bs=4k -direct=1 -thread -rw=randwrite -filename=$blkdev -name="EBS 4K randwrite test" -iodepth=$iodepth -runtime=60

