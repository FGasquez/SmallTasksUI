rendering
renderConfigOn: html with: app
	html
		form: [ html label
				for: 'languages';
				with: 'Traducir al idioma:  '.
			html space.
			html select
				callback: [ :value | self lang: value ];
				selected: self lang;
				list:self langOptions; labels:[:each| each first] .
			html break.
			html break.
			html tbsSubmitButton
				bePrimary;
				with: 'Guardar'.
			html tbsButton
				beDanger;
				callback: [ app remove: self ];
				with: 'eliminar' ]