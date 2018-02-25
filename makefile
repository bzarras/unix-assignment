all: README.md

README.md: guessinggame.sh
	echo "# Ben's Assignment for The Unix Workbench" > README.md
	echo "Last built on $(shell date)" >> README.md
	echo "Number of lines: $(shell cat guessinggame.sh | wc -l)" >> README.md

clean:
	rm README.md
