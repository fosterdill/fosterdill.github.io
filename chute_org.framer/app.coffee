# This imports all the layers for "Org Home" into orgHomeLayers
orgHomeLayers = Framer.Importer.load "imported/Org Home"

orgHomeLayers.getchute_posting_hover.opacity = 0
orgHomeLayers.getchute_posting_hover.visible = false
orgHomeLayers.vrs_tile_hover.opacity = 0
orgHomeLayers.vrs_tile_hover.visible = false
vrsX = orgHomeLayers.vrs.x
getchuteX = orgHomeLayers.getchute.x

orgHomeLayers.vrs_tile.on Events.MouseOver, ->
	orgHomeLayers.vrs_tile_hover.opacity = 100
	orgHomeLayers.vrs_tile_hover.visible = true

orgHomeLayers.vrs_tile_hover.on Events.MouseOut, ->
	orgHomeLayers.vrs_tile_hover.opacity = 0
	orgHomeLayers.vrs_tile_hover.visible = false

orgHomeLayers.getchute_posting.on Events.MouseOver, ->
	orgHomeLayers.getchute_posting_hover.opacity = 100
	orgHomeLayers.getchute_posting_hover.visible = true

orgHomeLayers.getchute_posting_hover.on Events.MouseOut, ->
	orgHomeLayers.getchute_posting_hover.opacity = 0
	orgHomeLayers.getchute_posting_hover.visible = false

orgHomeLayers.getchute.on Events.Click, ->
	orgHomeLayers.getchute.animate
		properties:
			scale: 1.05
		time: 0.2
	Utils.delay 0.2, ->
		orgHomeLayers.getchute.animate
			properties:
				scale: 1
			time: 0.2
	Utils.delay 0.4, ->
		window.location.href = 'http://localhost:4001';

orgHomeLayers.vrs.on Events.Click, ->
	orgHomeLayers.vrs.animate
		properties:
			scale: 1.05
		time: 0.2
	Utils.delay 0.2, ->
		orgHomeLayers.vrs.animate
			properties:
				scale: 1
			time: 0.2
	Utils.delay 0.4, ->
		window.location.href = 'http://localhost:4002';
