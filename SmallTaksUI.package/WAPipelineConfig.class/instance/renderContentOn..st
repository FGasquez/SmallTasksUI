rendering
renderContentOn: html
	StreamingRetriever stopAll. self navbar: html.
	html
		tbsContainer: [ self renderOptionsOn: html.
			self renderSelectedOn: html ].
	html break.
	html break.
	html
		tbsContainer: [ html tbsColumn
				mediumSize: 5;
				with: [ html tbsWell: [ self config renderConfigOn: html with: self ] ] ]