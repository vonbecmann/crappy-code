tests
testAssociations01
	| page |
	page := DSPage number: 2.
	self
		assertCollection:
			{(':limit' -> 10).
			(':offset' -> 10)}
		hasSameElements: page associations