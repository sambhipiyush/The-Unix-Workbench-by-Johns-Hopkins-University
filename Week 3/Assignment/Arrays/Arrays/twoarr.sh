#Write a bash script where you define two arrays inside of the script, and the sum of the lengths #of the arrays are printed to the console when the script is run.

first=(hello how are you)
second=(thank you everything is fine)

echo ${#first[*]} + ${#second[*]} | bc -l
