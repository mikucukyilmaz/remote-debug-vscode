# defines
TARGET_IP=192.168.1.40
OLD_PROGRAM_PATH=/tmp/hello_world.bin
EXECUTABLE=hello_world.bin

# make the target
make

# kill the gdbserver on target
ssh root@$TARGET_IP killall gdbserver

# remove old executable on target
ssh root@$TARGET_IP rm $OLD_PROGRAM_PATH

# copy over new executable
scp $EXECUTABLE root@$TARGET_IP:/tmp

# start gdb on target (IS ONE LONG COMMAND)
ssh -n -f root@$TARGET_IP "sh -c 'cd /tmp; nohup gdbserver localhost:3000 hello_world.bin > /dev/null 2>&1 &'"

