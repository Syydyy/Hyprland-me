-- ---- INPUT ----

-- https://wiki.hypr.land/Configuring/Variables/#input
hl.config({
    input = {
        kb_layout  = "br",
        kb_variant = "abnt2",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse          = 1,
        off_window_axis_events = 2,
        accel_profile         = "flat",
        force_no_accel        = false,
        sensitivity           = -0.35,

        touchpad = {
            natural_scroll = false,
        }
    }
})

-- See https://wiki.hypr.land/Configuring/Gestures
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Keywords/#per-device-input-configs for more
hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5
})