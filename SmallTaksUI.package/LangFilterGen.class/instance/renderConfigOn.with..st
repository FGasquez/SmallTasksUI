rendering
renderConfigOn: html with: app
	html
		form: [ html label
				for: 'languages';
				with: 'Seleccionar los tweets en el idioma:'.
			html break.
			html select
				callback: [ :value | self lang: value ];
				selected: self lang;
				list: self langOptions;
				labels: [ :each | each first ].
			html
				tbsInputGroup: [ html checkbox
						value: self acept;
						callback: [ :value | self acept: value ].
					html label with: 'Aceptar  ' ].
			html break.
			html break.
			html tbsSubmitButton
				bePrimary;
				with: 'Guardar'.
			html tbsButton
				beDanger;
				callback: [ app remove: self ];
				with: 'eliminar' ]