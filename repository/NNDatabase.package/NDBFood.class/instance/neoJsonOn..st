writing
neoJsonOn: neoJSONWriter
	"custom writing"

	neoJSONWriter
		writeMap:
			(OrderedDictionary new
				add: 'ndb_no' -> ndbno;
				add: 'full_name' -> name;
				add: 'food_group' -> fg;
				add: 'factors' -> self factors;
				add: 'nutrients' -> self nutrients;
				yourself)