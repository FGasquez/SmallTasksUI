rendering
renderConfigOn: html with: app
	html
		form: [ html label
				for: 'fileName';
				with: 'Nombre del archivo'.
			html textInput
				tbsFormControl;
				value: self fileName;
				name: 'fileName';
				style: 'with:100px';
				callback: [ :value | self fileName: value ].
			html label
				for: 'fileName';
				with: 'Tipo de archivo'.
			html select
				class: 'form-control ';
				callback: [ :value | self builder: value ];
				list: self builders;
				labels:[:each| each second];
				selected: self builder.
			self exists
				ifTrue: [ self renderWarningOn: html ].
			html break.
			html tbsSubmitButton
				bePrimary;
				with: 'Guardar'.
			html tbsButton
				beDanger;
				callback: [ app remove: self ];
				with: 'eliminar' ]