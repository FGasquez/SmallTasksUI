accessing
renderConfigOn: html with: app
	html
		tbsContainer: [ html text: 'La tarea ' , self name , ' no se puede configurar'.
			html break.
			html
				form: [ html tbsSubmitButton
						beDanger ;
						callback: [ app remove: self ];
						with: 'eliminar' ] ]