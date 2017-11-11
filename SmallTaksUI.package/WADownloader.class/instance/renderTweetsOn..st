rendering
renderTweetsOn: html
	html tbsContainer
		style:
			'max-height:500px;
		overflow-y:auto';
		with: [ html label for:'tweets' ;with:'Tweets Descargados'.html tbsTable
				beStriped;
				with: [ html
						tableHead: [ html tableHeading: '#'.
							html tableHeading: 'Usuario'.
							html tableHeading: 'Tweet' ].
					html
						tableBody: [ self tweets
								do: [ :aTweet | 
									html
										tableRow: [ html
												tableData: [ html tbsImage
														beCircle;
														width: 50;
														url: aTweet user profile_image_url ].
											html tableData: aTweet user name.
											html tableData: aTweet text ] ] ] ] ].
	html break.
	html
		tbsContainer: [ html
				form: [ html tbsSubmitButton
						beSuccess;
						style: 'float:right';
						with: 'refresh' ] ]