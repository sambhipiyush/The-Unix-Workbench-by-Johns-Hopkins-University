#Write a Bash script that takes a string as an argument and
#prints “how proper” if the string starts with a capital letter.

if [[ "$1" =~ ^[A-Z] ]]
then
  echo "how proper"
fi

echo "End"
