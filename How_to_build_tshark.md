# How to build manual tshark

* Use following commands
* Suppose that you are in the user's home directory.

1. Go to home directory
```
cd ~/
```
2. Make directory for PA3
```
mkdir PA3_tshark
cd ./PA3_tshark
```
3. Clone PA3 materials
```
git clone https://github.com/SKKU-TA-SH/23Spring-ComNet-PA3-Materials.git
```
4. Clone wireshark codes
```
git clone https://gitlab.com/wireshark/wireshark.git
```
5. Install requirements for wireshark
```
bash ./23Spring-ComNet-PA3-Materials/requirements_wireshark.sh
```
6. Move ComNet\_PA3\_tshark.c to wireshark directory
```
mv ./23Spring-ComNet-PA3-Materials/ComNet_PA3_tshark.c ./wireshark/
```
7. Move CMakeLists.txt to wireshark directory
```
mv ./23Spring-ComNet-PA3-Materials/CMakeLists.txt ./wireshark/
```
8. Make Makefile with cmake
```
cd ./wireshark/
cmake -DBUILD_wireshark=OFF -DBUILD_tshark=OFF -DBUILD_ComNet_PA3_tshark=ON
```
9. Build ComNet\_PA3\_tshark
```
make
```
10. Check interface name
```
sudo apt install net-tools
ifconfig
# Probably interface name will be eth0/1 or eno0/1.
# lo is loopback interface name, so lo is not proper interface.
```
11. Run ComNet\_PA3\_tshark
```
sudo ./run/ComNet_PA3_tshark -i <interface name>
```
12. Test '-qz' option
```
sudo ./run/ComNet_PA3_tshark -i <interface name> -qz io,stat,0.1,"SUM(frame.len),frame.len,MIN(frame.len)"
```
---
### For your own tshark

* Suppose that you are in the wireshark directory.

1. Make your own tshark file
```
cp ComNet_PA3_tshark.c <student ID>_tshark.c
```
2. Modify CMakeLists.txt
```
# Find source code to copy
grep -IHnr "ComNet PA3"
# Open CMakeLists.txt
vi CMakeLists.txt
# Then modify CMakeLists.txt with given code with comment "ComNet PA3"
# Copy and change ComNet_PA3_tshark to <student ID>_tshark
```
3. Make Makefile with cmake
```
cmake -DBUILD_wireshark=OFF -DBUILD_tshark=OFF -DBUILD_<student ID>_tshark=ON
```
4. Build your tshark
```
make
```
5. Run your tshark
```
sudo ./run/<student ID>_tshark -i <interface name>
```
10. Test '-qz' option
```
sudo ./run/<student ID>_tshark -i <interface name> -qz io,stat,0.1,"SUM(frame.len),frame.len,MIN(frame.len)"
```
. 
