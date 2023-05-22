# SKKU ComNet PA3 REPO

## This repository is made for SKKU ComNet class PA3

## Repo Contents

1. mkcscope.sh
    * Make cscope.out files for cscope.
    * Move mkscscope.sh files to user's home directory, then you can use cscope shell script whenever you want.
    ```
    mv ./mkcscope.sh ~/
    ```
    * Run `bash ~/mkcscope.sh` in the source code directory.
2. .ripgreprc & ripgrep.conf
    * Several configurations for ripgrep.
    * Need not to check contents of these files.
    * These allow you to look for keywords in files other than those created by ctags or cscope.
3. requirements\_wireshark.sh
    * Install basic requirements to build wireshark.
    * If you encounter additional errors after running this shell file, you will need to search and resolve them on your own.
    * Run `bash requirements_wireshark.sh` in wireshark directory.
4. analyze\_tools.sh
    * Install all source code analyzing tools which are announced in PA explanation PPT.
    * Run `bash analyze_tools.sh`
5. How\_to\_build\_tshark.md
    * TA has written down all the commands needed to build tshark.
    * Just read and follow along.
6. ComNet\_PA3\_tshark.c
    * You have to move this file to your wireshark directory.
    * You must build wireshark with this file.
7. CMakeList.txt
    * You have to move this file to your wireshark directory.
    * You must build wireshark with this file.
---
## ToDo order

1. Read How\_to\_build\_tshark.md
    * Then you can build tshark.
2. Install analysis tools
    * Then you can use analysis tools.

---
### Wireshark gitlab link


[Wireshark gitlab](https://gitlab.com/wireshark/wireshark.git)
