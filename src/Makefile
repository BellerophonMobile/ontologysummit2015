OUT=../public_html/

TXT_XSL=text-page.xsl

DEP_XML=

LIB=templates/
LIB_XSL=

all: $(OUT)vision.html                                                 \
     $(OUT)events.html                                                 \
     $(OUT)index.html


$(OUT)%.html: cnt/%.xml $(TXT_XSL) $(DEP_XML) $(LIB_XSL)
	xsltproc -o $@ $(TXT_XSL) $<

.PHONY: all
