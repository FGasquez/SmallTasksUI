rendering
renderConfigOn: html with: app
	html
		form: [ html label
				for: 'languages';
				with: 'idioma '.
			html select
				callback: [ :value | self lang: value ];
				selected: self lang;
				list: self langOptions.
			html
				tbsInputGroup: [ html label
						for: 'acept';
						with: 'Aceptar  '.
					html checkbox
						value: self acept;
						callback: [ :value | self acept: value  ] ].
			html break.
			html break.
			html tbsSubmitButton
				bePrimary;
				with: 'Guardar'.
			html tbsButton
				beDanger;
				callback: [ app remove: self ];
				with: 'eliminar' ]