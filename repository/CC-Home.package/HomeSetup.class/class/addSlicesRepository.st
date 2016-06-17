class initialization
addSlicesRepository
	| slicesDir |
	slicesDir := (FileLocator home / 'workspaces' / 'slices') asFileReference.
	(slicesDir exists and: [ slicesDir isDirectory ])
		ifTrue: [ 
			MCRepositoryGroup 
				default addRepository: (MCDirectoryRepository new directory: slicesDir) ]