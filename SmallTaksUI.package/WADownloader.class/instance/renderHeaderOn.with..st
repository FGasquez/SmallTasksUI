rendering
renderHeaderOn: html with: aHashtag
	html
		tbsContainer: [ html
				tbsPageHeader: [ html
						heading: [ html text: 'Hashtag: '.
							html space.
							html small: aHashtag ] ] ]