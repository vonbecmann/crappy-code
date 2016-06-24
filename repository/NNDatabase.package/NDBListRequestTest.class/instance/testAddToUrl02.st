tests
testAddToUrl02
	| url req |
	url := ZnUrl new
		scheme: #http;
		host: 'api.nal.usda.gov';
		addPathSegments: #('ndb' 'list');
		yourself.
	req := NDBListRequest new.
	req sortById.
	req listTypeBeFood.
	req offset: 0.
	req max: 200.
	req addTo: url.
	self
		assert: url asString
		equals:
			'http://api.nal.usda.gov/ndb/list?format=json&lt=f&api_key=xDXJMNJ88ZQpBtR4ABkWgcC0NlAXCuPqg3dvygQP&offset=0&sort=id&max=200'