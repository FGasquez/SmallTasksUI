rendering
renderTweetsOn: html
	html tbsContainer
		style:
			'max-height:350px;
		overflow-y:auto';
		with: [ html tbsTable
				beStriped;
				class:'table-responsive';
				with: [ html
						tableHead: [ html tableHeading: '#'.
							html tableHeading: 'Usuario'.
							html tableHeading: 'Tweet' ].
					html tableBody: [ self renderTableContentOn: html ] ] ].
	self tweets ifEmpty: [ self renderGandalfOn: html ].
	html break.
	html
		tbsContainer: [ html
				form: [ html tbsSubmitButton
						beSuccess;
						style: 'float:right';
						with: [ html tbsGlyphIcon iconRetweet ] ] ]