rendering
renderSwitchOn: html with: app
	html
		tbsContainer: [ html
				form: [ html tbsButton
						callback: [ app current: app pipelineConfig.
							self twitterApp stop.
							self tweets removeAll];
						with: 'Volver a la configuracion' ] ]