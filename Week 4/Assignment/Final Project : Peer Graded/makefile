#/usr/bin/env bash

all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench Course Peer-Graded Assignment" > README.md
	echo "*by Johns Hopkins University on [coursera.org](https://www.coursera.org/).*" >> README.md
	echo "\\" >> README.md	
	echo "**Description**: make a program called *guessinggame.sh*. This program should continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user is informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated." >> README.md
	echo "\\" >> README.md
	echo -n "**Make date**: " >> README.md
	date >> README.md
	echo "\\" >> README.md
	echo -n "**Number of lines in guessinggame.sh:** " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "" >> README.md
	echo "**KUDOS!!!**" >> README.md
	echo "" >> README.md
	echo "**Warm Regards,**" >> README.md
	echo "\\" >> README.md
	echo "**Piyush Sambhi**" >> README.md

clean:
	rm README.md
