@module 'LASeR', ->
	@module 'Data', ->
		@Map = (->
			map = undefined
			mapResponseContainer = undefined

			initResponseContainer = (mapResponseSelector) ->
				mapResponseContainer = $(mapResponseSelector)

			appendResponseRecord = (response) ->
				fastaRecordSequenceContainer = $('#fasta-record-sequence')
				fastaRecordSequenceContainer.empty()
				fastaRecordSequenceContainer.append(response)

			appendResponseListAndBind = (response) ->
				mapResponseContainer.empty()
				mapResponseContainer.append(response)

				$(document).off 'click', '.fasta-record'
				$(document).on 'click', '.fasta-record', (event) ->
					event.preventDefault()
					recordId = $(this).data('fasta-id')
					$.ajax(
						url: "/data/#{recordId}"
						method: 'GET'
						dataType: 'html'
						beforeSend: (xhr, settings) ->
							LASeR.Loader.showLoader()
						success: (response, status, xhr) ->
							appendResponseRecord(response)
						error: (xhr, status, error) ->
							toastr['error']('Unable to fetch record. Please try again later.')
						complete: (xhr, status) ->
							LASeR.Loader.hideLoader()
					)

			getDataForCoordinates = (latitude, longitude) ->
				$.ajax(
					url: '/data'
					method: 'GET'
					data:
						latitude: latitude
						longitude: longitude
					dataType: 'html'
					beforeSend: (xhr, settings) ->
						LASeR.Loader.showLoader()
					success: (response, status, xhr) ->
						appendResponseListAndBind(response)
					error: (xhr, status, error) ->
						toastr['error']('Unable to fetch data. Please try again later.')
					complete: (xhr, status) ->
						LASeR.Loader.hideLoader()
				)

			handleMapClickEvent = (event) ->
				getDataForCoordinates(event.latlng.lat, event.latlng.lng)

			handleMapMoveEvent = (event = null) ->
				bounds = map.getBounds()
				$.ajax(
					url: '/data/refresh'
					method: 'GET'
					data:
						north_east_latitude: bounds._northEast.lat
						north_east_longitude: bounds._northEast.lng
						south_west_latitude: bounds._southWest.lat
						south_west_longitude: bounds._southWest.lng
					dataType: 'json'
					success: (response, status, xhr) ->
						for coordinates in response
							L.marker(
								[Number(coordinates.latitude), Number(coordinates.longitude)],
								{iconUrl: '/marker-icon-2x.png'}
							).addTo(map)

							$("img[src$='/marker-icon-2x.png']").each(() ->
								$(this).attr('src', '/marker-icon-2x.png')
							)
				)

			initMap = (mapSelector) ->
				map = L.map(mapSelector).setView([1.3143394, 103.7038209], 2)
				L.tileLayer('https://api.mapbox.com/styles/v1/{style_id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
          attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>'
          maxZoom: 18
          style_id: 'mapbox/streets-v11'
          accessToken: 'pk.eyJ1Ijoib3Nob3BnaXJpIiwiYSI6ImNqd3hwODNhcTB0Yzc0NG84YmljOHplZG8ifQ.5Ilv3CdVJ4qptj8RbQYE8g').addTo map
				map.on('click', handleMapClickEvent)
				map.on('moveend', handleMapMoveEvent)
				handleMapMoveEvent()

			start = (mapSelector, mapResponseSelector) ->
				initMap(mapSelector)
				initResponseContainer(mapResponseSelector)
		)()