accessing
builders
	^ OrderedCollection
		with: {#zip . '.fuel.zip'}
		with: {#ston . '.ston'}
		with: {#txt . '.txt'}
		with: { #fuel. '.fuel' }