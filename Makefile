





# Complicated output.

include analytics.dep

clean: 
	rm -f analytics.dep *.compout input.*

%.compout: 
	@echo Making '$*'
	@echo Which needs  $(firstword $(subst _, ,$*))
	@echo Which needs  $(word 2,$(subst _, ,$*))
	$(eval first=$(firstword $(subst _, ,$*)))
	$(eval second=$(word 2,$(subst _, ,$*)))
	touch $@  # and ${first} and ${second} as part of command line.


%.input:
	touch $@


analytics.dep: analytics.pre ## Look at my masterful recompilation! ;) 
	cp $< $@
