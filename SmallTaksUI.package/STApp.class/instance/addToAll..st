accessing
addToAll: aTask
	self tasks isEmpty
		ifTrue: [ self tasks add: aTask .^ self].
	self tasks do: [ :each | each |> aTask ]