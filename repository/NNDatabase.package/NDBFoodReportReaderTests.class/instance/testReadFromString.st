tests
testReadFromString
	| report food first second |
	report := reader
		readFromString:
	'{"report": {
        "sr": "28",
        "type": "Full",
        "food": {
            "ndbno": "01009",
            "name": "Cheese, cheddar",
            "fg": "Dairy and Egg Products",
            "nf": 0.0,
            "cf": 0.0,
            "ff": 0.0,
            "pf": 0.0,
            "nutrients": [
                {
                    "name": "Water",
                    "unit": "g",
                    "value": 37.02
                },
                {
                    "name": "Energy",
                    "unit": "kcal",
                    "value": 404.0
                }]}}}'.
	self deny: report isNil.
	self assert: report sr equals: '28'.
	self assert: report type equals: 'Full'.
	food := report food.
	self assert: food ndbno equals: '01009'.
	self assert: food named equals: 'Cheese, cheddar'.
	self assert: food fg equals: 'Dairy and Egg Products'.
	self assert: food nf equals: 0.0.
	self assert: food cf equals: 0.0.
	self assert: food ff equals: 0.0.
	self assert: food pf equals: 0.0.
	self assert: food nutrients size equals: 2.
	first := food nutrients first.
	self assert: first named equals: 'Water'.
	self assert: first unit equals: 'g'.
	self assert: first equivalentValue equals: 37.02.
	second := food nutrients second.
	self assert: second named equals: 'Energy'.
	self assert: second unit equals: 'kcal'.
	self assert: second equivalentValue equals: 404.0.