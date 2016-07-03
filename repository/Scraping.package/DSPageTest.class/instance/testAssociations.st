tests
testAssociations
	| page |
	page := DSPage number: 1.
	self
		assertCollection:
			{(':limit' -> 10).
			(':offset' -> 0)}
		hasSameElements: page associations