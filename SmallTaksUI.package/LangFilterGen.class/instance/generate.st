accessing
generate
	^ (SmallTask prepare: [ :tweet | tweet language = self lang ]) filter