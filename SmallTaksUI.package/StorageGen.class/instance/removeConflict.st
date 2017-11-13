removing
removeConflict
	self exists
		ifTrue: [ (File named: self fileName , self builder second) delete ]