reading
readFromString: aString
	| reportDict |
	reportDict := self readFromStream: aString readStream.
	^ reportDict at: 'report'