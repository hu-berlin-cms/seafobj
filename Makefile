all:
	@echo
	@echo 'Usage: make <target>'
	@echo
	@echo '    unittest			run unit tests'
	@echo '    functest			run funtional tests'
	@echo

dist:
	tar czvf seafobj.tar.gz seafobj/ \
	--exclude='*.git*' \
	--exclude='*.log' \
	--exclude='*~' \
	--exclude='*#' \
	--exclude='*.gz' \
	--exclude='*.pyc' \
	--exclude-vcs

unittest:
	@bash .unittests

functest:
	@bash .functests

pylint:
	@bash .pylint

.PHONY: all unittest functest pylint
