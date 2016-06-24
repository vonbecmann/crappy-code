printing
printOn: aStream
	aStream
		print: self class;
		nextPut: $(;
		print: ndbno;
		nextPutAll: ', ';
		print: name;
		nextPut: $)