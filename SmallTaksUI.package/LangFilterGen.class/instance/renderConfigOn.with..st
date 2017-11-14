rendering
renderConfigOn: html with: app
	html
		form: [ html label
				for: 'languages';
				with: 'Seleccionar los tweets en el idioma:'.
			html break.
			html select
				class: 'form-control';
				callback: [ :value | self lang: value ];
				selected: self lang;
				list: self langOptions;
				labels: [ :each | each first ].
			html
				tbsInputGroup: [ html checkbox
						value: self acept;
						callback: [ :value | self acept: value ];
						with: 'Obtener tweets en este idioma (sino, se rechazan )'.
					html break.
					html break.
					html tbsSubmitButton
						bePrimary;
						with: 'Guardar'.
					html tbsButton
						beDanger;
						callback: [ app remove: self ];
						with: 'eliminar' ] ]