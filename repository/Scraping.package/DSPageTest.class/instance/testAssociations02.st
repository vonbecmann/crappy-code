tests
testAssociations02
	| page |
	page := DSPage number: 3.
	self
		assertCollection:
			{(':limit' -> 10).
			(':offset' -> 20)}
		hasSameElements: page associations