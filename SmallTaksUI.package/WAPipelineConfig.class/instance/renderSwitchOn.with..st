rendering
renderSwitchOn: html with: app
	html
		tbsContainer: [ html
				form: [ html tbsButton
						beInfo;
						callback: [ self switch: app];
						with: 'Iniciar' ] ]