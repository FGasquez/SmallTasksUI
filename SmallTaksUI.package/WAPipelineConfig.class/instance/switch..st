as yet unclassified
switch: app
	| twitterApp set aTasksCollection |
	set := OrderedCollection  new.
	twitterApp := (self selectedTasks reject: [ :each | each isTask ])
		ifNotEmpty: [ :aCollection | aCollection first generate ].
	aTasksCollection := self selectedTasks copy.
	aTasksCollection add: (CollectionStorageGen prepare: set).
	twitterApp tasks: {(self taskGenOf: (aTasksCollection select: [ :each | each isTask ]))}.
	app downloader tweets: set.
	app twitterApp: twitterApp.
	app current: app downloader.
	twitterApp do