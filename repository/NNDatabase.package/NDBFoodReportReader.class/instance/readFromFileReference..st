reading
readFromFileReference: aFileReference
	| reportDict |
	reportDict := aFileReference readStreamDo: [ :s | self readFromStream: s ].
	^ reportDict at: 'report'