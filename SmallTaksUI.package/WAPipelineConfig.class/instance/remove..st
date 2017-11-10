removing
remove: aTask
	self config: self downloadTask.
	self selectedTasks remove: aTask