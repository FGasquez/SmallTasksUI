accessing
removeConflict
	| aFile |
	aFile := File named: self file , '.ston'.
	aFile exists
		ifTrue: [ aFile  delete ]