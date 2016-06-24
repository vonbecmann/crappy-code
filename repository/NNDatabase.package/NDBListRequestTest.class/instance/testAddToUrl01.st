tests
testAddToUrl01
	| url req |
	url := ZnUrl new
		scheme: #http;
		host: 'api.nal.usda.gov';
		addPathSegments: #('ndb' 'list');
		yourself.
	req := NDBListRequest new.
	req sortById.
	req listTypeBeFood.
	req addTo: url.
	self
		assert: url asString
		equals:
			'http://api.nal.usda.gov/ndb/list?format=json&lt=f&api_key=xDXJMNJ88ZQpBtR4ABkWgcC0NlAXCuPqg3dvygQP&sort=id&max=50'