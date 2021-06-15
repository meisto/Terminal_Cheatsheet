#!/bin/bash
# Date format: DD:MM:YY-hh:mm:ss
# Types: ONC (once), REG (regular), IRR (irregular)


echo_color () {
   # Arguments: fg_color_code bg_color_code text
   # A color code should be given in the format
   # "r;g;b" where r,g,b=0-255
   # If a colorcode is equal to "-", it will
   # be ignored

   ## Assemble ANSI 24-bit color codes
   fg_prefix="\x1b[38;2;"
   bg_prefix="\x1b[48;2;"
   color_suffix="m"

   fg_cc=$fg_prefix$1$color_suffix
   bg_cc=$bg_prefix$2$color_suffix
   
   test $1 != "-" && echo -ne $fg_cc
   test $2 != "-" && echo -ne $bg_cc
   echo -ne "$3"

   # Stop color modifications
   echo -ne "\e[0m"
}

echo_block () {
   echo_color $2 "-" "\uE0B2"
   echo_color $1 $2 " $3 "
   echo_color $2 "-" "\uE0B0"
}

echo_color "255;0;0" "0;255;255" "\uE0B2 test \uE0B0"
echo ""


echo_block "255;0;0" "0;255;255" "test"
echo ""

