extends Label


func _process(_delta):
	if not Global.time_visible:
		hide()
	else:
		visible = true
	var time = Global.time
	
	var mils = fmod(time,1)*1000
	var secs = fmod(time,60)
	var mins = fmod(time, 60*60) / 60
	
	var time_passed = "%02d : %02d" % [mins,secs]
	text = time_passed
	$mils_label.text = "%03d" % [mils]
