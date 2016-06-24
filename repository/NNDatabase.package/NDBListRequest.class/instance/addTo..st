public
addTo: aZnUrl
	api_key ifNotNil: [ aZnUrl queryAt: 'api_key' put: api_key ].
	lt ifNotNil: [ aZnUrl queryAt: 'lt' put: lt ].
	offset ifNotNil: [ aZnUrl queryAt: 'offset' put: offset ].
	max ifNotNil: [ aZnUrl queryAt: 'max' put: max ].
	sort ifNotNil: [ aZnUrl queryAt: 'sort' put: sort ].
	format ifNotNil: [ aZnUrl queryAt: 'format' put: format ]