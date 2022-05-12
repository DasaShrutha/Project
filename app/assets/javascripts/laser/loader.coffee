@module 'LASeR', ->
	@Loader = (->
		showLoader: () ->
			$('#ajax-load').removeClass('d-none')

		hideLoader: () ->
			$('#ajax-load').addClass('d-none')

		init: ->
	)()