export LD_LIBRARY_PATH=.:../../bin/unix64/release:$(LD_LIBRARY_PATH)
./multichannel_logger64 --channel -1 --nbitrate 500 --dbitrate 2000 --tres 120 0-7 mylogfilename
