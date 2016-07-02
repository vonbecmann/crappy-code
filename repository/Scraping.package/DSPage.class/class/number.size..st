instance creation
number: anInteger size: integerSize
	self assert: anInteger > 0.
	^ self basicNew initializeNumber: anInteger size: integerSize