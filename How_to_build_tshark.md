# How to build manual tshark

* Use following commands
* Suppose that you are in the user's home directory.

1. Clone PA3 materials
```
git clone https://github.com/SKKU-TA-SH/23Spring-ComNet-PA3-Materials.git
```
2. Clone wireshark codes
```
git clone https://gitlab.com/wireshark/wireshark.git
```
3. Install requirements for wireshark
```
bash ~/23Spring-ComNet-PA3-Materials/requirements_wireshark.sh
```
4. Move ComNet\_PA3\_tshark.c to wireshark directory
```
mv ~/23Spring-ComNet-PA3-Materials/ComNet_PA3_tshark.c ~/wireshark/
```
5. Move CMakeList.txt to wireshark directory
```
mv ~/23Spring-ComNet-PA3-Materials/CMakeList.txt ~/wireshark/
```
6. Make Makefile with cmake
```
cd ~/wireshark/
cmake -DBUILD_wireshark=OFF -DBUILD_tshark=ON -DBUILD_ComNet_PA3_tshark=ON
```
7. Build ComNet\_PA3\_tshark
```
make
```
8. Check interface name
```
sudo apt install net-tools
ifconfig
# Probably interface name will be eth0/1 or eno0/1.
# lo is loopback interface name, so lo is not proper interface.
```
9. Run ComNet\_PA3\_tshark
```
sudo ./run/ComNet_PA3_tshark -i <interface name>
```
10. Test '-qz' option
```
sudo ./run/ComNet_PA3_tshark -i <interface name> -qz io,stat,0.1,"SUM(frame.len)frame.len,frame.len,MIN(frame.len)frame.len"
```
---
### For your own tshark

* Suppose that you are in the wireshark directory.

1. Make your own tshark file
```
mv ComNet_PA3_tshark.c <student ID>_tshark.c
```
2. Modify CMakeList.txt
```
# Find source code to copy
grep -IHnr "ComNet PA3"
# Open CMakeList.txt
vi CMakeList.txt
# Then modify CMakeList.txt with given code with comment "ComNet PA3"
# Change ComNet_PA3_tshark to <student ID>_tshark
```
3. Make Makefile with cmake
```
cmake -DBUILD_wireshark=OFF -DBUILD_tshark=ON -DBUILD_<student ID>_tshark=ON
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
sudo ./run/<student ID>_tshark -i <interface name> -qz io,stat,0.1,"SUM(frame.len)frame.len,frame.len,MIN(frame.len)frame.len"
```
. 