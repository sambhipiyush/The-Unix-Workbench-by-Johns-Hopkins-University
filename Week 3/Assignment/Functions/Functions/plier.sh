#Write a function called plier which multiplies
#together a sequence of numbers.

function plier {
	local multi=1
	for element in $@
	do
		let multi=multi*$element
	done

	echo $multi
}
