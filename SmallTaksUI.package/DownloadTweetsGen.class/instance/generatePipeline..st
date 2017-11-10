accessing
generatePipeline: aCollection
	| app pipeline |
	app := STApp prepare: self hashtag.
	aCollection isEmpty
		ifTrue: [ ^ (app tasks: Set new) inspect ].
	pipeline := aCollection removeFirst generate.
	aCollection do: [ :each | pipeline |> each generate ].
	^ app tasks: {pipeline}