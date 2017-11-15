rendering
renderContentOn: html with: app
	self renderNavbarOn: html.
	self renderHeaderOn: html with: app twitterApp hashtag.
	self renderCounterOn: html. self renderTweetsOn: html