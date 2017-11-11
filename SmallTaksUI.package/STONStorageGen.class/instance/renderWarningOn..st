rendering
renderWarningOn: html
	html tbsAlert
		beWarning;
		style: 'with:100px';
		with: [ html tbsGlyphIcon iconWarningSign.
	
			html text: 'Ya existe otro archivo con este nombre, si lo deja asi, sera sobreescrito' ]