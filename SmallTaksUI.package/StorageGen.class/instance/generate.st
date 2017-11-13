accessing
generate
	self removeConflict.
	^ (SmallTask reporter: self builder first) >> self fileName