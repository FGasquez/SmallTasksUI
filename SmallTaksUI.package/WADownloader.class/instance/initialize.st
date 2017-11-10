initialization
initialize
	super initialize.
	self tweets: Set new.
	self storageTask: (StorageTask on: self tweets )