------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

hl.monitor({
	output = "eDP-1",
	mode = "1920x1200@60",
	position = "320x1144",
	scale = "1.50",
})
hl.monitor({
	output = "DP-5",
	mode = "1920x1080@60",
	position = "0x64",
	scale = "1.00",
})
hl.monitor({
	output = "DP-7",
	mode = "1920x1080@60",
	position = "1920x0",
	scale = "1.00",
	transform = 1,
})
