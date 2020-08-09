#!/bin/bash
echo "Explicit list:"
for picture in img001.jpg img002.jpg img451.jpg
do
  echo "picture is equal to $picture"
done
echo ""
echo "Array:"
stooges=(curly larry moe)
for stooge in ${stooges[*]}
do
  echo "Current stooge: $stooge"
done
echo ""
echo "Command substitution:"
for code in *.sh
do
  [[ -e "$code" ]] || break
  echo "$code"" is a bash script"
done
