include Makefile.inc

ALL:

.PHONY: ALL \
	escrow

escrow:
	@rm -rf escrow/ && mkdir -p escrow/
	@$(MAKE) _backup-src

_backup-src:
	@echo "Archiving sources"
	@git archive --format=tar HEAD | gzip > escrow/myscript-math-web-src-$(GIT_VERSION).tar.gz
