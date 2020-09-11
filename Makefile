MKDIR_P = mkdir -p
OBJ_DIR = pdfs

GNUPLOT := gnuplot
OBJECTS := $(patsubst ./gnus/%.gnu, ./pdfs/%.pdf, $(wildcard ./gnus/*.gnu))
PHONY += directories

all: directories $(OBJECTS)

directories: ${OBJ_DIR}
	
${OBJ_DIR}:
	${MKDIR_P} ${OBJ_DIR}
	
${OBJ_DIR}/%.pdf: ./gnus/%.gnu
	$(GNUPLOT) $<

PHONY += clean
clean::
	rm -rf $(OBJ_DIR)

.PHONY: $(PHONY)
