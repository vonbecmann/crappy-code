printing
printOn: aStream
	aStream
		print: self class;
		nextPut: $(;
		print: name;
		nextPutAll: ', ';
		print: unit;
		nextPutAll: ', ';
		print: value;
		nextPut: $)