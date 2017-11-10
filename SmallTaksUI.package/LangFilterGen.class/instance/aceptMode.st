visiting
aceptMode
	self acept 
		ifFalse: [ ^ self mode: #!= ].
	self mode: #==