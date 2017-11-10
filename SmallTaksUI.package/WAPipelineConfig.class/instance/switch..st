rendering
switch: app
	| twitterApp auxCollection |
	auxCollection := self selectedTasks copy.
	twitterApp := auxCollection removeFirst.
	twitterApp := twitterApp generatePipeline: auxCollection.

	app current: (app downloader twitterApp: twitterApp)