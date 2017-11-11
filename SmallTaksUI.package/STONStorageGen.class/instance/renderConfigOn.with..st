rendering
renderConfigOn: html with: app
	html
		form: [ html label for:'fileName'; with: 'Nombre del archivo'.
			html textInput
				tbsFormControl;
				value: self file;
				name: 'fileName';
				style: 'with:100px';
				callback: [ :value | self file: value ].
			(File named: self file , '.ston') exists
				ifTrue: [ self renderWarningOn: html ].
			html break.
			html tbsSubmitButton
				bePrimary;
				with: 'Guardar'.
			html tbsButton
				beDanger;
				callback: [ app remove: self ];
				with: 'eliminar' ]