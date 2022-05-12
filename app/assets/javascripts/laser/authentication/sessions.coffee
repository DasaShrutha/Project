@module 'LASeR', ->
	@module 'Authentication', ->
		@Sessions = (->
			alertContainer = undefined
			alertList = undefined

			initAlertContainer = (alertSelector) ->
				alertContainer = $(alertSelector)
				alertList = alertContainer.children('ul').first()

			flushAlerts = () ->
				alertList.empty()

			appendAlert = (alert) ->
				alertList.append($('<li>').append(alert))

			showAlertContainer = () ->
				if alertContainer.hasClass('d-none')
					flushAlerts()
					alertContainer.removeClass 'd-none'

			hideAlertContainer = () ->
				unless alertContainer.hasClass('d-none')
					alertContainer.addClass 'd-none'

			bindFormRemoteEvents = (formSelector) ->
				$(document).off('ajax:beforeSend', formSelector)
					.off('ajax:success', formSelector)
					.off('ajax:error', formSelector)

				$(document).on('ajax:beforeSend', formSelector, (response) ->
					hideAlertContainer()
				).on('ajax:success', formSelector, (response) ->
					data = response.detail[0]
					if data.success
						$(formSelector).find('input[type="submit"]').last().hide()
						toastr['success'](data.data.message)
						setTimeout (->
							window.location.reload()
						), 2000
					else
						showAlertContainer()
						$.each data.data.errors, (field, error) ->
							appendAlert "#{field}: #{error}"
				).on 'ajax:error', formSelector, (response) ->
					showAlertContainer()
					appendAlert response.detail[0].error

			start = (formSelector = '#user_sign_in') ->
				initAlertContainer("#{formSelector}_alerts")
				bindFormRemoteEvents(formSelector)
		)()