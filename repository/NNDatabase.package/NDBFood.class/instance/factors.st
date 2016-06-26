public
factors
	| factors |
	factors := OrderedCollection new.
	(cf isNotNil and: [ (cf closeTo: 0.0) not ])
		ifTrue: [ factors
				add:
					{('factor' -> 'Carbohydrate Factor').
					('amt' -> cf)} asDictionary ].
	(ff isNotNil and: [ (ff closeTo: 0.0) not ])
		ifTrue: [ factors
				add:
					{('factor' -> 'Fat Factor').
					('amt' -> ff)} asDictionary ].
	(pf isNotNil and: [ (pf closeTo: 0.0) not ])
		ifTrue: [ factors
				add:
					{('factor' -> 'Protein Factor').
					('amt' -> pf)} asDictionary ].
	(nf isNotNil and: [ (nf closeTo: 0.0) not ])
		ifTrue: [ factors
				add:
					{('factor' -> 'Nitrogen to Protein Conversion Factor').
					('amt' -> nf)} asDictionary ].
	^ factors