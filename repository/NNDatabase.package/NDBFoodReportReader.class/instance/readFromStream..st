reading
readFromStream: stream
	^ (NeoJSONReader on: stream)
		for: NDBNutrient do: [ :m | m mapInstVars: #(#name #unit #value) ];
		for: #Nutrients customDo: [ :m | m listOfElementSchema: NDBNutrient ];
		for: NDBFood
			do: [ :m | 
			m mapInstVars: #(#ndbno #name #fg #nf #pf #ff #cf).
			(m
				mapProperty: 'nutrients'
				getter: [ :ob | ob nutrients ]
				setter: [ :ob :value | ob nutrients: value ]) valueSchema: #Nutrients ];
		for: NDBFoodReport
			do: [ :m | 
			m mapInstVars: #(#sr #type).
			(m
				mapProperty: 'food'
				getter: [ :ob | ob food ]
				setter: [ :ob :value | ob food: value ]) valueSchema: NDBFood ];
		for: #ReportDict customDo: [ :m | m mapWithValueSchema: NDBFoodReport ];
		nextAs: #ReportDict