rendering
renderConfigOn: html with: app
	html
		form: [ html label with: 'Usuario'.
			html
				tbsInputGroup: [ html tbsInputGroupAddOn: '@'.
					html textInput
						tbsFormControl;
						name: 'user';
						callback: [ :value | self user: value ];
						value: self user ].
			html
				tbsInputGroup: [ html space.
					html checkbox
						value: self acept;
						callback: [ :value | self acept: value ].
					html label
						for: 'acept';
						with: 'Aceptar los tweets de este usuario ' ].
			html break.
			html tbsSubmitButton
				bePrimary;
				with: 'Guardar' .html tbsButton
				beDanger;
				callback: [ app remove: self ];
				with: 'eliminar' ]