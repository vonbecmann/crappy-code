public
addTo: aZnUrl
	api_key ifNotNil: [ aZnUrl queryAt: 'api_key' put: api_key ].
	ndbno ifNotNil: [ aZnUrl queryAt: 'ndbno' put: ndbno ].
	type ifNotNil: [ aZnUrl queryAt: 'type' put: type ].
	format ifNotNil: [ aZnUrl queryAt: 'format' put: format ]