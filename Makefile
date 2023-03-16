PYTHON=python
TWINE=twine

test:
	poetry run ${PYTHON} -m unittest discover {{cookiecutter.project_name}}/ "test_*.py"

lint:
	poetry run flake8

isort:
	poetry run  isort . --check-only

release-major:
	@poetry version major && \
	echo "Publicando versión $$(poetry version --no-interaction | cut -d ' ' -f 2)" && \
	git ci -am "New release v$$(poetry version --no-interaction | cut -d ' ' -f 2)" && \
	git push && \
	git tag v$$(poetry version --no-interaction | cut -d ' ' -f 2) && \
	git push origin --tags

release-minor:
	@poetry version minor && \
	echo "Publicando versión $$(poetry version --no-interaction | cut -d ' ' -f 2)" && \
	git ci -am "New release v$$(poetry version --no-interaction | cut -d ' ' -f 2)" && \
	git push && \
	git tag v$$(poetry version --no-interaction | cut -d ' ' -f 2) && \
	git push origin --tags


release-patch:
	@poetry version patch && \
	echo "Publicando versión $$(poetry version --no-interaction | cut -d ' ' -f 2)" && \
	git ci -am "New release v$$(poetry version --no-interaction | cut -d ' ' -f 2)" && \
	git push && \
	git tag v$$(poetry version --no-interaction | cut -d ' ' -f 2) && \
	git push origin --tags
