printing
printOn: aStream
	aStream
		print: self class;
		nextPut: $(;
		print: name;
		print: unit;
		print: value;
		nextPut: $)