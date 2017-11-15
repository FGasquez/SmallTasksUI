rendering
renderGandalfOn: html
	html
		tbsContainer: [ html tbsColumn
				mediumSize: 5;
				with: [ html label
						for: 'gandalf';
						with: 'Aùn no se descarga ningun tweet'.
					html break.
					html tbsImage class:'img-fluid'; url: 'https://i.giphy.com/media/FyetIxXamPsfC/giphy.webp'.
					html break ] ]