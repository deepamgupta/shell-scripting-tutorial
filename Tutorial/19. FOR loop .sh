#! /bin/bash

# for loops

# for VARIABLE in 1 2 3 4 5 .. N; do
#       command1
#       command2
#       .
#       .
#       .
#       commandN
# done

# # OR-----------------------------------------------------

# for VARIABLE in file1 file2 file3; do
#       command1 on $VARIABLE
#       command2
#       .
#       .
#       .commandN
# done

# # OR-----------------------------------------------------

# for OUTPUT in $(Linux-Or-Unix_Command-Line); do
#       command1 on $OUTPUT
#       command2 on $ OUTPUT
#       .
#       .
#       .
#       commandN
# done

# # OR-----------------------------------------------------

# for ((EXP1; EXP2; EXP3)); do
#       command1
#       command2
#       .
#       .
#       .
#       commandN
# done

for i in {0..10..2}; do # {start..end..increment}
      printf "$i "
done

echo

for ((i = 0; i < 5; ++i)); do
      printf "$i "
done

echo
