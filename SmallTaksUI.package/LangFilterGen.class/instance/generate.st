accessing
generate
	^ (SmallTask
		prepare: [ :tweet | tweet language perform: self mode with: self lang second ]) filter
		