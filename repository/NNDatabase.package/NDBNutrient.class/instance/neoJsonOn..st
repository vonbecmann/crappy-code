writing
neoJsonOn: neoJSONWriter
	"custom writing"

	neoJSONWriter
		writeMap:
			(OrderedDictionary new
				add: 'nutrient' -> self named;
				add: 'unit' -> unit;
				add: 'per100g' -> value;
				yourself)