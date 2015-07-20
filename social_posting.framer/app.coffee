# This imports all the layers for "social posting home" into socialPostingHomeLayers1
socialPostingHomeLayers = Framer.Importer.load "imported/social posting home"

socialPostingHomeLayers.footer.opacity = 0

socialPostingHomeLayers.back_hover.scale = 0
socialPostingHomeLayers.back_hover.visible = false

socialPostingHomeLayers.mymedia_4_hover.visible = false
socialPostingHomeLayers.mymedia_4_hover.opacity = 0

socialPostingHomeLayers.schedule_hover.visible = false
socialPostingHomeLayers.schedule_hover.opacity = 0

socialPostingHomeLayers.photochute_2_hover.visible = false
socialPostingHomeLayers.photochute_2_hover.opacity = 0

socialPostingHomeLayers.request_rights_hover.visible = false
socialPostingHomeLayers.request_rights_hover.opacity = 0

socialPostingHomeLayers.main_content.superLayer = socialPostingHomeLayers.scrolling_bg

socialPostingHomeLayers.burgermenu.on Events.MouseOver, ->
	socialPostingHomeLayers.back_hover.visible = true
	socialPostingHomeLayers.burgermenu.animate
		properties:
			scale: 0
		time: 0.2
		curve: 'ease-out'
	Utils.delay 0.2, ->
		socialPostingHomeLayers.burgermenu.visible = false
		socialPostingHomeLayers.back_hover.animate
			properties:
				scale: 1
			time: 0.2
			curve: 'ease-out'

socialPostingHomeLayers.back_hover.on Events.MouseOut, ->
	socialPostingHomeLayers.burgermenu.visible = true
	socialPostingHomeLayers.back_hover.animate
		properties:
			scale: 0
		time: 0.2
		curve: 'ease-out'
	Utils.delay 0.2, ->
		socialPostingHomeLayers.back_hover.visible = false
		socialPostingHomeLayers.burgermenu.animate
			properties:
				scale: 1
			time: 0.2
			curve: 'ease-out'

socialPostingHomeLayers.back_hover.on Events.Click, ->
	socialPostingHomeLayers.arrow_cursor.animate
		properties:
			scale: 1.3
		time: 0.2
	Utils.delay 0.2, ->
		socialPostingHomeLayers.arrow_cursor.animate
			properties:
				scale: 1
			time: 0.2
	Utils.delay 0.4, ->
		window.location.href = 'http://localhost:4000';

socialPostingHomeLayers.mymedia_1.on Events.MouseOver, ->
	socialPostingHomeLayers.mymedia_4_hover.visible = true
	socialPostingHomeLayers.mymedia_4_hover.x = socialPostingHomeLayers.mymedia_1.x
	socialPostingHomeLayers.schedule_hover.x = socialPostingHomeLayers.mymedia_1.x
	socialPostingHomeLayers.schedule_hover.visible = false
	socialPostingHomeLayers.schedule_hover.opacity = 0
	socialPostingHomeLayers.mymedia_4_hover.animate
		properties:
			opacity: 1
		time: 0.3

socialPostingHomeLayers.mymedia_1.on Events.MouseOut, ->
	socialPostingHomeLayers.mymedia_4_hover.x = socialPostingHomeLayers.mymedia_1.x
	socialPostingHomeLayers.mymedia_4_hover.animate
		properties:
			opacity: 0
		time: 0.3

socialPostingHomeLayers.mymedia_2.on Events.MouseOver, ->
	socialPostingHomeLayers.mymedia_4_hover.visible = true
	socialPostingHomeLayers.mymedia_4_hover.x = socialPostingHomeLayers.mymedia_2.x
	socialPostingHomeLayers.schedule_hover.x = socialPostingHomeLayers.mymedia_2.x
	socialPostingHomeLayers.schedule_hover.visible = false
	socialPostingHomeLayers.schedule_hover.opacity = 0
	socialPostingHomeLayers.mymedia_4_hover.animate
		properties:
			opacity: 1
		time: 0.3

socialPostingHomeLayers.mymedia_2.on Events.MouseOut, ->
	socialPostingHomeLayers.mymedia_4_hover.x = socialPostingHomeLayers.mymedia_2.x
	socialPostingHomeLayers.mymedia_4_hover.animate
		properties:
			opacity: 0
		time: 0.3

socialPostingHomeLayers.mymedia_3.on Events.MouseOver, ->
	socialPostingHomeLayers.mymedia_4_hover.visible = true
	socialPostingHomeLayers.mymedia_4_hover.x = socialPostingHomeLayers.mymedia_3.x
	socialPostingHomeLayers.schedule_hover.x = socialPostingHomeLayers.mymedia_3.x
	socialPostingHomeLayers.schedule_hover.visible = false
	socialPostingHomeLayers.schedule_hover.opacity = 0
	socialPostingHomeLayers.mymedia_4_hover.animate
		properties:
			opacity: 1
		time: 0.3

socialPostingHomeLayers.mymedia_3.on Events.MouseOut, ->
	socialPostingHomeLayers.mymedia_4_hover.x = socialPostingHomeLayers.mymedia_3.x
	socialPostingHomeLayers.mymedia_4_hover.animate
		properties:
			opacity: 0
		time: 0.3

socialPostingHomeLayers.mymedia_4.on Events.MouseOver, ->
	socialPostingHomeLayers.mymedia_4_hover.visible = true
	socialPostingHomeLayers.mymedia_4_hover.x = socialPostingHomeLayers.mymedia_4.x
	socialPostingHomeLayers.schedule_hover.x = socialPostingHomeLayers.mymedia_4.x
	socialPostingHomeLayers.schedule_hover.visible = false
	socialPostingHomeLayers.schedule_hover.opacity = 0
	socialPostingHomeLayers.mymedia_4_hover.animate
		properties:
			opacity: 1
		time: 0.3

socialPostingHomeLayers.mymedia_4.on Events.MouseOut, ->
	socialPostingHomeLayers.mymedia_4_hover.x = socialPostingHomeLayers.mymedia_4.x
	socialPostingHomeLayers.mymedia_4_hover.animate
		properties:
			opacity: 0
		time: 0.3

socialPostingHomeLayers.schedule.on Events.MouseOver, ->
	socialPostingHomeLayers.schedule_hover.visible = true
	socialPostingHomeLayers.schedule_hover.opacity = 1

socialPostingHomeLayers.schedule_button_hover.on Events.Click, ->
	socialPostingHomeLayers.schedule_button_hover.animate
		properties:
			scale: 1.05
		time: 0.2
	Utils.delay 0.2, ->
		socialPostingHomeLayers.schedule_button_hover.animate
			properties:
				scale: 1
			time: 0.2
	Utils.delay 0.2, ->
		window.open('//localhost:3000/intents/asset?context=schedule', 'gallery', "width=1000,height=500")


socialPostingHomeLayers.photochute_1.on Events.MouseOver, ->
	socialPostingHomeLayers.photochute_2_hover.visible = true
	socialPostingHomeLayers.photochute_2_hover.x = socialPostingHomeLayers.photochute_1.x
	socialPostingHomeLayers.request_rights_hover.x = socialPostingHomeLayers.photochute_1.x
	socialPostingHomeLayers.request_rights_hover.visible = false
	socialPostingHomeLayers.request_rights_hover.opacity = 0
	socialPostingHomeLayers.photochute_2_hover.animate
		properties:
			opacity: 1
		time: 0.3

socialPostingHomeLayers.photochute_1.on Events.MouseOut, ->
	socialPostingHomeLayers.photochute_2_hover.x = socialPostingHomeLayers.photochute_1.x
	socialPostingHomeLayers.photochute_2_hover.animate
		properties:
			opacity: 0
		time: 0.3

socialPostingHomeLayers.photochute_2.on Events.MouseOver, ->
	socialPostingHomeLayers.photochute_2_hover.visible = true
	socialPostingHomeLayers.photochute_2_hover.x = socialPostingHomeLayers.photochute_2.x
	socialPostingHomeLayers.request_rights_hover.x = socialPostingHomeLayers.photochute_2.x
	socialPostingHomeLayers.request_rights_hover.visible = false
	socialPostingHomeLayers.request_rights_hover.opacity = 0
	socialPostingHomeLayers.photochute_2_hover.animate
		properties:
			opacity: 1
		time: 0.3

socialPostingHomeLayers.photochute_2.on Events.MouseOut, ->
	socialPostingHomeLayers.photochute_2_hover.x = socialPostingHomeLayers.photochute_2.x
	socialPostingHomeLayers.photochute_2_hover.animate
		properties:
			opacity: 0
		time: 0.3

socialPostingHomeLayers.photochute_3.on Events.MouseOver, ->
	socialPostingHomeLayers.photochute_2_hover.visible = true
	socialPostingHomeLayers.photochute_2_hover.x = socialPostingHomeLayers.photochute_3.x
	socialPostingHomeLayers.request_rights_hover.x = socialPostingHomeLayers.photochute_3.x
	socialPostingHomeLayers.request_rights_hover.visible = false
	socialPostingHomeLayers.request_rights_hover.opacity = 0
	socialPostingHomeLayers.photochute_2_hover.animate
		properties:
			opacity: 1
		time: 0.3

socialPostingHomeLayers.photochute_3.on Events.MouseOut, ->
	socialPostingHomeLayers.photochute_2_hover.x = socialPostingHomeLayers.photochute_3.x
	socialPostingHomeLayers.photochute_2_hover.animate
		properties:
			opacity: 0
		time: 0.3

socialPostingHomeLayers.photochute_4.on Events.MouseOver, ->
	socialPostingHomeLayers.photochute_2_hover.visible = true
	socialPostingHomeLayers.photochute_2_hover.x = socialPostingHomeLayers.photochute_4.x
	socialPostingHomeLayers.request_rights_hover.x = socialPostingHomeLayers.photochute_4.x
	socialPostingHomeLayers.request_rights_hover.visible = false
	socialPostingHomeLayers.request_rights_hover.opacity = 0
	socialPostingHomeLayers.photochute_2_hover.animate
		properties:
			opacity: 1
		time: 0.3

socialPostingHomeLayers.photochute_4.on Events.MouseOut, ->
	socialPostingHomeLayers.photochute_2_hover.x = socialPostingHomeLayers.photochute_4.x
	socialPostingHomeLayers.photochute_2_hover.animate
		properties:
			opacity: 0
		time: 0.3

socialPostingHomeLayers.request_rights.on Events.MouseOver, ->
	socialPostingHomeLayers.request_rights_hover.visible = true
	socialPostingHomeLayers.request_rights_hover.opacity = 1

socialPostingHomeLayers.request_rights_hover_button.on Events.Click, ->
	socialPostingHomeLayers.request_rights_hover_button.animate
		properties:
			scale: 1.05
		time: 0.2
	Utils.delay 0.2, ->
		socialPostingHomeLayers.request_rights_hover_button.animate
			properties:
				scale: 1
			time: 0.2
	Utils.delay 0.2, ->
		window.open('//localhost:3000/intents/asset?context=request_rights', 'gallery', "width=1000,height=500")


