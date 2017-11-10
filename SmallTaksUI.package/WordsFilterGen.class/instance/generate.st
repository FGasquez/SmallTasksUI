translating
generate
	^ (SmallTask prepare: [ :tweet | tweet text substrings size perform: (self operator ) with: self quantity ]) filter