# age=8
# until [ $age -lt 4 ]
# do
# 	$sum +=  $age
#     ((age-=1))
# done
# echo $sum

# i=8

# until [ $i -lt 3 ]
# do
#   sum=$((sum + i))
#   ((i=i-1))
# done
# echo $sum

# javac MarkdownParse.java

# if [ $? -eq 00 ]
# then
#   echo "Exit code was not zero"
#   exit 1
# fi

# echo "Exit code was zero"

# if [ $# -eq 0 ]
# then
#   echo "No argument is provided"
#   exit 1
# fi

# ANIMAL=$1
# printf "Your favorite animal is %s\n" $ANIMAL

# let "VAR = 5 + 4"
# let VAR++
# RES=$(( VAR + 3 ))
# (( RES-- ))
# echo $RES

i=8

until [ $i -lt 3 ]
do
  sum=$((sum + i))
  ((i=i-1))
done
echo $sum