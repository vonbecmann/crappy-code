Name		Required	Default	Description
api_key		y			n/a		Must be a data.gov registered API key
lt 			n			f		list type(lt): f = food , n = all nutrients, ns = speciality nutrients, nr = standard release nutrients only,g = food group
max 		n			50		maximum number of items to return
offset		n			0		beginning item in the result set
sort 			n			n		sort order: n=name or id (Meaning of id varies by list type: nutrient number for a nutrient list, NDBno for a foods list ,food group id for a food group list
format		n			JSON	report format: JSON or XML
