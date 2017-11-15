accessing
renderConfigAcordionOn: html with: app
	| accordion |
	accordion := TBSAccordion new.
	accordion add: [ :htmlCanvas| self renderConfigOn: htmlCanvas with: app ] title: self name.
	html render: accordion