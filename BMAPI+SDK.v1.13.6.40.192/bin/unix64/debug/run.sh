export LD_LIBRARY_PATH=.:../../bin/unix64/release:$(LD_LIBRARY_PATH)
export LD_LIBRARY_PATH=.:../../bin/unix64/debug:$(LD_LIBRARY_PATH)
./bmapi_test64d 0 rx 1000 &
sleep 1
./bmapi_test64d 1 tx 1000 1