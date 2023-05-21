#!/bin/sh

rm -rf cscope.files cscope.files

find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' -o -name '*.cu' \) -print > cscope.files

cscope -i cscope.files
