#! /bin/bash


# Syntax

# case expression in
#       pattern1 )      # pattern can be a regexp
#             statements ;;
#       pattern2 )
#             statements ;;
#       ...
# esac

vechile=$1

case $vechile in
      "car" )
            echo "Rent of $vechile is Rs.100" ;;
      "van" )
            echo "Rent of $vechile is Rs.80" ;;
      "bicycle" )
            echo "Rent of $vechile is Rs.5" ;;
      "truck" )
            echo "Rent of $vechile is Rs.150" ;;
      * ) # wilcard argument in linux(*)
            echo "Unknown vechile" ;;
esac

