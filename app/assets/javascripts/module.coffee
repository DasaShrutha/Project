window.module = (name, fn)->
	if not @[name]?
		this[name] = {}
	if not @[name].module?
		@[name].module = window.module
	try
		fn.apply(this[name], [])
	catch error
		console.error(error) if console