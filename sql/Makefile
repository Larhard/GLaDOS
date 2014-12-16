CAT ?= cat
RM ?= rm -f
ZIP ?= zip
TAR ?= tar

PROJECT = glados
PACKAGE = $(PROJECT).zip
PACKABLE = create.sql clear.sql diagram.png README.txt

all : $(PACKAGE)

create.sql : schema.sql fill.sql
	$(CAT) $^ > $@

%.zip :
	$(RM) $@
	$(ZIP) $@ $^

%.tar.gz :
	$(TAR) czvf $@ $^

$(PACKAGE) : $(PACKABLE)

clean :
	$(RM) $(PACKAGE) create.sql

.PHONY : all clean
