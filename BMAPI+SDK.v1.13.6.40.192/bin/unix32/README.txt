Launch the bmapi_test example directly: 
sudo ./run.sh

Or you might want to run your own app following the steps below:
1. Copy the library files below to /usr/lib/:
libbmapi.so
2. Grant access to the libraries:
chmod 777 /usr/lib/libbmapi.so
!!!IMPORTANT!!! If you do not run your app using sudo(or under su session), BM_OpenEx() would return -3 because it does not have access to USB devices.