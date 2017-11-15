rendering
renderContentOn: html with: app
	self renderNavbarOn: html.
	html
		tbsContainer: [ self renderOptionsOn: html.
			self renderSelectedOn: html ].
	html break.
	html break.
	html
		tbsContainer: [ html tbsColumn
				mediumSize: 5;
				with: [ self config renderConfigAcordionOn: html with: self ] ]