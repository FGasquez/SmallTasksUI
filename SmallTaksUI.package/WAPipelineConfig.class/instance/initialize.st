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
				with: (ConfigGeneratorFactory genTask: #langFilter)
				with: (ConfigGeneratorFactory  genTask: #wordsFilter)
				with: (ConfigGeneratorFactory  genTask: #transcriptShow)
				with: (ConfigGeneratorFactory  genTask: #collectionStorageGen)
				with: (ConfigGeneratorFactory  genTask: #storageGen)
				with: (ConfigGeneratorFactory  genTask: #translateGen)).
	self options add: (ConfigGeneratorFactory  genTask: #userFilter)