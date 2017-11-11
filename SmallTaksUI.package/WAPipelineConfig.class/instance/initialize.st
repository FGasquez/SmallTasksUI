initialization
initialize
	super initialize.
	StreamingRetriever stopAll.
	self downloadTask: DownloadTweetsGen new.
	self config: self downloadTask.
	self selectedTasks: OrderedCollection new.
	self selectedTasks add: self config.
	self
		options:
			(OrderedCollection
				with: (TaskGenerator getTask: #langFilter)
				with: (TaskGenerator getTask: #wordsFilter)
				with: (TaskGenerator getTask: #transcriptShow)
				with: (TaskGenerator getTask: #storageGen)
				with: (TaskGenerator getTask: #stonGen))