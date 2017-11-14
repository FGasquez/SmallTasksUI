rendering
renderContentOn: html
	self navbar: html.
	html
		tbsContainer: [ self renderOptionsOn: html.
			self renderSelectedOn: html ].
	html break.
	html break.
	html
		tbsContainer: [ html tbsColumn
				mediumSize: 5;
				with: [  self config renderConfigurationOn: html with: self ] ]