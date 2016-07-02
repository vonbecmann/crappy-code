tests
testOffset
	| page |
	page := DSPage number: 1.
	self assert: page offset equals: 0.
	page := DSPage number: 2.
	self assert: page offset equals: 10.
	page := DSPage number: 3.
	self assert: page offset equals: 20