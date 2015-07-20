# This imports all the layers for "live event" into liveEventLayers
liveEventLayers = Framer.Importer.load "imported/live event"

liveEventLayers.footer.opacity = 0

liveEventLayers.back_hover.scale = 0
liveEventLayers.back_hover.visible = false

liveEventLayers.inbox_hover.visible = false
liveEventLayers.inbox_hover.opacity = 0

liveEventLayers.approve_hover.visible = false
liveEventLayers.approve_hover.opacity = 0

liveEventLayers.livecontent_hover.visible = false
liveEventLayers.livecontent_hover.opacity = 0

liveEventLayers.remove_hover.visible = false
liveEventLayers.remove_hover.opacity = 0

liveEventLayers.main_content.superLayer = liveEventLayers.scrolling_bg

liveEventLayers.burgermenu.on Events.MouseOver, ->
	liveEventLayers.back_hover.visible = true
	liveEventLayers.burgermenu.animate
		properties:
			scale: 0
		time: 0.2
		curve: 'ease-out'
	Utils.delay 0.2, ->
		liveEventLayers.burgermenu.visible = false
		liveEventLayers.back_hover.animate
			properties:
				scale: 1
			time: 0.2
			curve: 'ease-out'

liveEventLayers.back_hover.on Events.MouseOut, ->
	liveEventLayers.burgermenu.visible = true
	liveEventLayers.back_hover.animate
		properties:
			scale: 0
		time: 0.2
		curve: 'ease-out'
	Utils.delay 0.2, ->
		liveEventLayers.back_hover.visible = false
		liveEventLayers.burgermenu.animate
			properties:
				scale: 1
			time: 0.2
			curve: 'ease-out'

liveEventLayers.back_hover.on Events.Click, ->
	liveEventLayers.arrow_cursor.animate
		properties:
			scale: 1.3
		time: 0.2
	Utils.delay 0.2, ->
		liveEventLayers.arrow_cursor.animate
			properties:
				scale: 1
			time: 0.2
	Utils.delay 0.4, ->
		window.location.href = 'http://localhost:4000';

#########
liveEventLayers.inbox_1.on Events.MouseOver, ->
	liveEventLayers.inbox_hover.visible = true
	liveEventLayers.inbox_hover.x = liveEventLayers.inbox_1.x
	liveEventLayers.approve_hover.x = liveEventLayers.inbox_1.x
	liveEventLayers.approve_hover.visible = false
	liveEventLayers.approve_hover.opacity = 0
	liveEventLayers.inbox_hover.animate
		properties:
			opacity: 1
		time: 0.3

liveEventLayers.inbox_1.on Events.MouseOut, ->
	liveEventLayers.inbox_hover.x = liveEventLayers.inbox_1.x
	liveEventLayers.inbox_hover.animate
		properties:
			opacity: 0
		time: 0.3

liveEventLayers.inbox_2.on Events.MouseOver, ->
	liveEventLayers.inbox_hover.visible = true
	liveEventLayers.inbox_hover.x = liveEventLayers.inbox_2.x
	liveEventLayers.approve_hover.x = liveEventLayers.inbox_2.x
	liveEventLayers.approve_hover.visible = false
	liveEventLayers.approve_hover.opacity = 0
	liveEventLayers.inbox_hover.animate
		properties:
			opacity: 1
		time: 0.3

liveEventLayers.inbox_2.on Events.MouseOut, ->
	liveEventLayers.inbox_hover.x = liveEventLayers.inbox_2.x
	liveEventLayers.inbox_hover.animate
		properties:
			opacity: 0
		time: 0.3

liveEventLayers.inbox_3.on Events.MouseOver, ->
	liveEventLayers.inbox_hover.visible = true
	liveEventLayers.inbox_hover.x = liveEventLayers.inbox_3.x
	liveEventLayers.approve_hover.x = liveEventLayers.inbox_3.x
	liveEventLayers.approve_hover.visible = false
	liveEventLayers.approve_hover.opacity = 0
	liveEventLayers.inbox_hover.animate
		properties:
			opacity: 1
		time: 0.3

liveEventLayers.inbox_3.on Events.MouseOut, ->
	liveEventLayers.inbox_hover.x = liveEventLayers.inbox_3.x
	liveEventLayers.inbox_hover.animate
		properties:
			opacity: 0
		time: 0.3

liveEventLayers.inbox_4.on Events.MouseOver, ->
	liveEventLayers.inbox_hover.visible = true
	liveEventLayers.inbox_hover.x = liveEventLayers.inbox_4.x
	liveEventLayers.approve_hover.x = liveEventLayers.inbox_4.x
	liveEventLayers.approve_hover.visible = false
	liveEventLayers.approve_hover.opacity = 0
	liveEventLayers.inbox_hover.animate
		properties:
			opacity: 1
		time: 0.3

liveEventLayers.inbox_4.on Events.MouseOut, ->
	liveEventLayers.inbox_hover.x = liveEventLayers.inbox_4.x
	liveEventLayers.inbox_hover.animate
		properties:
			opacity: 0
		time: 0.3

liveEventLayers.approve.on Events.MouseOver, ->
	liveEventLayers.approve_hover.visible = true
	liveEventLayers.approve_hover.opacity = 1

liveEventLayers.approve_hover_button.on Events.Click, ->
	liveEventLayers.approve_hover_button.animate
		properties:
			scale: 1.05
		time: 0.2
	Utils.delay 0.2, ->
		liveEventLayers.approve_hover_button.animate
			properties:
				scale: 1
			time: 0.2
  Utils.delay 0.2, ->
  	window.open('//localhost:3000/intents/confirmation?context=inbox_asset', 'asset', "width=1000,height=500")

liveEventLayers.livecontent_1.on Events.MouseOver, ->
	liveEventLayers.livecontent_hover.visible = true
	liveEventLayers.livecontent_hover.x = liveEventLayers.livecontent_1.x
	liveEventLayers.remove_hover.x = liveEventLayers.livecontent_1.x
	liveEventLayers.remove_hover.visible = false
	liveEventLayers.remove_hover.opacity = 0
	liveEventLayers.livecontent_hover.animate
		properties:
			opacity: 1
		time: 0.3

liveEventLayers.livecontent_1.on Events.MouseOut, ->
	liveEventLayers.livecontent_hover.x = liveEventLayers.livecontent_1.x
	liveEventLayers.livecontent_hover.animate
		properties:
			opacity: 0
		time: 0.3

liveEventLayers.livecontent_2.on Events.MouseOver, ->
	liveEventLayers.livecontent_hover.visible = true
	liveEventLayers.livecontent_hover.x = liveEventLayers.livecontent_2.x
	liveEventLayers.remove_hover.x = liveEventLayers.livecontent_2.x
	liveEventLayers.remove_hover.visible = false
	liveEventLayers.remove_hover.opacity = 0
	liveEventLayers.livecontent_hover.animate
		properties:
			opacity: 1
		time: 0.3

liveEventLayers.livecontent_2.on Events.MouseOut, ->
	liveEventLayers.livecontent_hover.x = liveEventLayers.livecontent_2.x
	liveEventLayers.livecontent_hover.animate
		properties:
			opacity: 0
		time: 0.3

liveEventLayers.livecontent_3.on Events.MouseOver, ->
	liveEventLayers.livecontent_hover.visible = true
	liveEventLayers.livecontent_hover.x = liveEventLayers.livecontent_3.x
	liveEventLayers.remove_hover.x = liveEventLayers.livecontent_3.x
	liveEventLayers.remove_hover.visible = false
	liveEventLayers.remove_hover.opacity = 0
	liveEventLayers.livecontent_hover.animate
		properties:
			opacity: 1
		time: 0.3

liveEventLayers.livecontent_3.on Events.MouseOut, ->
	liveEventLayers.livecontent_hover.x = liveEventLayers.livecontent_3.x
	liveEventLayers.livecontent_hover.animate
		properties:
			opacity: 0
		time: 0.3

liveEventLayers.livecontent_4.on Events.MouseOver, ->
	liveEventLayers.livecontent_hover.visible = true
	liveEventLayers.livecontent_hover.x = liveEventLayers.livecontent_4.x
	liveEventLayers.remove_hover.x = liveEventLayers.livecontent_4.x
	liveEventLayers.remove_hover.visible = false
	liveEventLayers.remove_hover.opacity = 0
	liveEventLayers.livecontent_hover.animate
		properties:
			opacity: 1
		time: 0.3

liveEventLayers.livecontent_4.on Events.MouseOut, ->
	liveEventLayers.livecontent_hover.x = liveEventLayers.livecontent_4.x
	liveEventLayers.livecontent_hover.animate
		properties:
			opacity: 0
		time: 0.3

liveEventLayers.remove.on Events.MouseOver, ->
	liveEventLayers.remove_hover.visible = true
	liveEventLayers.remove_hover.opacity = 1

liveEventLayers.remove_hover_button.on Events.Click, ->
	liveEventLayers.remove_hover_button.animate
		properties:
			scale: 1.05
		time: 0.2
	Utils.delay 0.2, ->
		liveEventLayers.remove_hover_button.animate
			properties:
				scale: 1
			time: 0.2
  Utils.delay 0.2, ->
  	window.open('//localhost:3000/intents/confirmation?context=livecontent_asset', 'asset', "width=1000,height=500")

