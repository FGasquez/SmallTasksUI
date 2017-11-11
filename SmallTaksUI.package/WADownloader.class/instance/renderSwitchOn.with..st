rendering
renderSwitchOn: html with: app
	html
		tbsContainer: [ html
				form: [ html tbsButton beInfo;
						callback: [ app current: app pipelineConfig.
							app twitterApp stop.
							self tweets removeAll ];
						with: 'Volver a la configuracion' ] ]