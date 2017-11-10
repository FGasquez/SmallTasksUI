initialization
initialize
	super initialize.
	self downloadTask: DownloadTweetsGen new.
	self config: self downloadTask.
	self selectedTasks: OrderedCollection new.
	self selectedTasks add: self config.
	self
		options:
			(OrderedCollection
				with: LangFilterGen new
				with: WordsFilterGen new
				with: TranscriptShowGen new
				with: StorageGen new)