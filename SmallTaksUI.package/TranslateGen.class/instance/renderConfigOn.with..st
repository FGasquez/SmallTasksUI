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
		
			html break.
			html break.
			html tbsSubmitButton
				bePrimary;
				with: 'Guardar'.
			html tbsButton
				beDanger;
				callback: [ app remove: self ];
				with: 'eliminar' ]