

RECORDS=10000

DATA=data
INDEX=index

default: $(INDEX)


$(DATA): data.spew
	./spew -f $< "$(RECORDS)" > $@
TO_CLEAN += $(DATA)


$(INDEX): $(DATA)
	./make-index "$@" < $<
TO_CLEAN += $(INDEX)


test: $(INDEX)
	./search "$<" Maroon Saab Moped  | less


clean:
	rm -rf $(TO_CLEAN) *~
