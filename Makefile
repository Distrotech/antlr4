JARDIR = /usr/share/java
ANTLR = dist/antlr-4.1-dev-complete.jar


$(ANTLR):
	ant

all: $(ANTLR)

install: all
	install -d $(DESTDIR)$(JARDIR)
	install -t $(DESTDIR)$(JARDIR) $(ANTLR)

clean:
	ant clean

distclean:
	@rm -rf lib
