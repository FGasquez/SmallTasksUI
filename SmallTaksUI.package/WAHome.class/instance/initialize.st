initialization
initialize
	super initialize.
	self pipelineConfig: WAPipelineConfig new.
	self downloader: WADownloader new.
	self current: self pipelineConfig