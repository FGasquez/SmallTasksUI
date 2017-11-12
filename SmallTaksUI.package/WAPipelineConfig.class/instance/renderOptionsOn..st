rendering
renderOptionsOn: html
	html tbsColumn
		mediumSize: 5;
		with: [ html
				form: [ html
						tbsInputGroup: [ html label
								for: 'options';
								with: 'Tareas'.
							html select
								id: 'options';
								class: 'form-control';
								callback: [ :value | self selectedTasks add: (ConfigGenerator getTask: value id) ];
								list: self options;
								labels: [ :each | each name ];
								size: 5 ].
					html break.
					html tbsSubmitButton with: 'Agregar' ] ]