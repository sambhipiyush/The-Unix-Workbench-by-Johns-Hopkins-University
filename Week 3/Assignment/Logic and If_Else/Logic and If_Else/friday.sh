#Write a Bash script that prints “Thank Moses it’s Friday”
#if today is Friday. (Hint: take a look at the date program).

myDate=($(date))

if [[ "$myDate" =~ ^[F*] ]]
then
	echo "Thank Moses it's Friday."
fi

