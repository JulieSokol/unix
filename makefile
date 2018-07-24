all: README.md

README.md: 
	echo "# Guessing game" > README.md
	echo "## Make was run at: " >> README.md
	date >> README.md
	echo "## guessinggame.sh has the following number of lines of code: " >> README.md
	cat guessinggame.sh | wc -l | xargs  >> README.md

clean:
	rm README.md