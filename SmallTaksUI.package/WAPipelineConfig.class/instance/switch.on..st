rendering
switch: app on: html
	| twitterApp set aTasksCollection |
	set := Set new.
	twitterApp := (self selectedTasks reject: [ :each | each isTask ])
		ifNotEmpty: [ :aCollection | aCollection first generate ].
	aTasksCollection := self selectedTasks copy.
	aTasksCollection add: (StorageGen prepare: set).
	twitterApp tasks: {(self taskGenOf: (aTasksCollection select: [ :each | each isTask ]))}.
	app downloader tweets: set.
	app twitterApp: twitterApp .
	app current: app downloader