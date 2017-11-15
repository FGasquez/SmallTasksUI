as yet unclassified
taskGenFor: aCollection
	| firstTask |
	firstTask := aCollection ifNotEmpty: [ :each | each removeFirst generate ].
	firstTask ifNotNil: [ aCollection do: [ :each | firstTask |> each generate ] ].
	^ firstTask