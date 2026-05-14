---------------
---- INPUT ----
---------------

-- https://wiki.hypr.land/Configuring/Basics/Variables/#input

hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		numlock_by_default = true,

		follow_mouse = 1,

		sensitivity = -0.7, -- -1.0 - 1.0, 0 means no modification.
		accel_profile = "flat",

		touchpad = {
			natural_scroll = true,
			scroll_factor = 0.4,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
	name = "ftcs0038:00-2808:0106-touchpad",
	sensitivity = 0,
})
