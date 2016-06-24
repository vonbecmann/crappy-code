tests
testAddToUrl
	| url req |
	url := ZnUrl new
		scheme: #http;
		host: 'api.nal.usda.gov';
		addPathSegments: #('ndb' 'list');
		yourself.
	req := NDBListRequest new.
	req listTypeBeFood.
	req addTo: url.
	self
		assert: url asString
		equals:
			'http://api.nal.usda.gov/ndb/list?max=50&format=json&api_key=xDXJMNJ88ZQpBtR4ABkWgcC0NlAXCuPqg3dvygQP&lt=f'