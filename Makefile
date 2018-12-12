#!/usr/bin/make -f

PROJECT     = realtime-suggestions
SCRIPTFILE  = $(PROJECT)
README      = README.rst
SHELL       = /bin/bash
LINT       := shellcheck -s bash
PREFIX     := /usr/local
BINDIR     := $(PREFIX)/bin
DOCDIR     := $(PREFIX)/share/doc/$(PROJECT)
DESTDIR    :=


.PHONY: check install uninstall

all:

check:
	$(if $(shell PATH=$(PATH) command -v $(LINT)),,$(error "No $(LINT) in PATH"))
	$(LINT) $(SCRIPTFILE)

install:
	install -vDm 755 $(SCRIPTFILE) -t $(DESTDIR)/$(BINDIR)
	install -vdm 755 $(DESTDIR)/$(DOCDIR)
	install -vDm 644 $(README) -t $(DESTDIR)/$(DOCDIR)

uninstall:
	rm -vf $(DESTDIR)/$(BINDIR)/$(SCRIPTFILE)
	rm -vf $(DESTDIR)/$(DOCDIR)/$(README)
