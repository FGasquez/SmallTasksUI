accessing
renderConfigOn: html with: app
	html form: [html textInput
		tbsFormControl;
		value: self hashtag;
		callback: [ :value | self hashtag: value ].
	html break.
	html tbsSubmitButton
		bePrimary;
		with: 'Guardar']