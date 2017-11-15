rendering
renderImageOf: aUser On: html
	html anchor
		url: '#' , aUser id_str;
		attributeAt: 'data-toggle' put: 'modal';
		with: [ html tbsImage
				beCircle;
				width: 50;
				height: 50;
				url: aUser profile_image_url ].
	html tbsModal
		id: aUser id_str;
		with: [ html
				tbsModalDialog: [ html
						tbsModalContent: [ html
								tbsModalHeader: [ html tbsModalCloseIcon.
									html tbsModalTitle
										level: 4;
										with: aUser name ].
							html
								tbsModalBody class:'text-center'; with: [ html tbsImage
										width: '500';
										url: aUser profile_image_url ] ] ] ]