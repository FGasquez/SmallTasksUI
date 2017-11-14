rendering
renderTableContentOn: html
	self tweets reverse
		do: [ :aTweet | 
			html
				tableRow: [ html tableData: [ self modalImage: aTweet user On: html ].
					html
						tableData: [ html text: aTweet user name. html break.
							(html anchor
								url: 'https://twitter.com/' , aTweet user screen_name;
								target: '_blank';
								with: '@' , aTweet user screen_name) asString ].
					html tableData: aTweet text ] ]