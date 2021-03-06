.PHONY: default, lint

default:
	python -m kb
spell:
	codespell . --ignore-words-list=hist --skip=./.* --quiet-level=2 || true
lint:
	pylint kb
pep8:
	autopep8 kb --in-place --recursive --aggressive --aggressive
clean:
	rm -rf build/ dist/ kb_manager.egg-info/
test:
	pytest
reinstall:
	pip uninstall kb
	pyenv rehash
	pip install .
	pyenv rehash
