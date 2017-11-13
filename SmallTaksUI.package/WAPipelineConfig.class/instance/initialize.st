initialization
initialize
	super initialize.
	StreamingRetriever stopAll.
	self downloadTask: TwitterAppGen new.
	self config: self downloadTask.
	self selectedTasks: (OrderedCollection with: self downloadTask).
	self
		options:
			(OrderedCollection
				with: (ConfigGenerator getTask: #langFilter)
				with: (ConfigGenerator getTask: #wordsFilter)
				with: (ConfigGenerator getTask: #transcriptShow)
				with: (ConfigGenerator getTask: #collectionStorageGen)
				with: (ConfigGenerator getTask: #storageGen)
				with: (ConfigGenerator getTask: #translateGen))