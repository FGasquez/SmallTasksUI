rendering
renderConfigOn: html with: app
	html
		form: [ html label
				for: 'quantity';
				with: 'Cantidad de palabras'.
			html select
				class: 'form-control';
				style: 'width:100px';
				callback: [ :value | self operator: value ];
				selected: self operator;
				list: self operators.
			html textInput
				tbsFormControl;
				style: 'width:100px';
				value: self quantity;
				callback: [ :value | self quantity: value asInteger ].
				html break.
			html tbsSubmitButton
				bePrimary;
				with: 'Guardar'.
			html tbsButton
				bePrimary;
				callback: [ app remove: self ];
				with: 'eliminar' ]