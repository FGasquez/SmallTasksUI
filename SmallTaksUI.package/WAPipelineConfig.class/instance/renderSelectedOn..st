rendering
renderSelectedOn: html
	html tbsColumn
		mediumSize: 5;
		with: [ html
				tbsForm: [ html
						tbsInputGroup: [ html label
								for: 'selected';
								with: 'Tareas seleccionadas'.
							html select
								class: 'form-control ';
								callback: [ :value | self config: value ];
								list: self selectedTasks;
								labels: [ :each | each name ];
								selected: self config;
								size: 10 ].
					html break.
					html tbsSubmitButton with: 'Configurar' ] ]