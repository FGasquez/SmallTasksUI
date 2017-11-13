accessing
removeConflict
	self exists
		ifTrue: [ (File named: self file , '.ston') delete ]