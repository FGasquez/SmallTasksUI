accessing
generate
	^ (SmallTask
		prepare: [ :aTweet | aTweet screen_name perform: self operator with: self mode ] )filter