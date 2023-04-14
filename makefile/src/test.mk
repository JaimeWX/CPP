#test.mk
LDIR=$(shell pwd) #/root/make/src
LSS=$(shell ls)
TMP=$(shell echo 111>222)
OUT:=out
INIT=$(shell if [ ! -d $(OUT) ]; then mkdir $(OUT); fi;)
test:
	@-echo -n $(INIT)
	@echo $(LDIR)
	@echo $(LSS)
	@-echo -n $(TMP)
