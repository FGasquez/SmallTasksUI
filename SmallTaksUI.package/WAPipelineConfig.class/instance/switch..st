as yet unclassified
switch: app
	| twitterApp collection aTasksCollection |
	collection := OrderedCollection new.
	twitterApp := (self selectedTasks reject: [ :each | each isTask ])
		ifNotEmpty: [ :aCollection | aCollection first generate ].
	aTasksCollection := self selectedTasks copy.
	aTasksCollection add: (CollectionStorageGen prepare: collection).
	twitterApp tasks: {(self taskGenFor: (aTasksCollection select: [ :each | each isTask ]))}.
	app downloader tweets: collection.
	app twitterApp: twitterApp.
	app current: app downloader.
	twitterApp do 