printing
printOn: aStream
	aStream
		print: self class;
		nextPut: $(;
		print: type;
		nextPut: $)