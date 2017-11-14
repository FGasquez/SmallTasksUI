accessing
renderConfigOn: html with: app
	 html text: 'La tarea ' , self name , ' no posee menu de configuracion'.
			html break.
			html
				form: [ html tbsSubmitButton
						beDanger;
						callback: [ app remove: self ];
						with: 'eliminar' ] 