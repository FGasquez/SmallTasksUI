rendering
renderConfigOn: html with: app
	html
		form: [ html label
				for: 'filename';
				with: 'Nombre del archivo  '.
			html textInput
				tbsFormControl;
				value: self file;
				callback: [ :value | self file: value ].
			html break.
			html tbsSubmitButton
				bePrimary;
				with: 'Guardar'.
			html tbsButton
				beDanger;
				callback: [ app remove: self ];
				with: 'eliminar' ]