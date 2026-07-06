.PHONY: all lint lint-markdown lint-and-fix-markdown link-check

all: lint-markdown link-check

lint: lint-markdown

lint-markdown:
	npx --yes markdownlint-cli2 README.md

lint-and-fix-markdown:
	npx --config --yes markdownlint-cli2 README.md --fix

link-check:
	npx --yes markdown-link-check README.md --alive "200,403,429"
