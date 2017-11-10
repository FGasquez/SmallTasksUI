accessing
generate
	^ (SmallTask
		prepare: [ :tweet | 'Usuario: ' , tweet user name , ' | Tweet -> ' , tweet text ])
		reporter: #transcript