tests
testAddToUrl01
	| url req |
	url := ZnUrl new
		scheme: #http;
		host: 'api.nal.usda.gov';
		addPathSegments: #('ndb' 'reports');
		yourself.
	req := NDBFoodReportRequest new.
	req beFullReport.
	req addTo: url.
	self
		assert: url asString
		equals:
			'http://api.nal.usda.gov/ndb/reports?format=json&api_key=xDXJMNJ88ZQpBtR4ABkWgcC0NlAXCuPqg3dvygQP&type=f'