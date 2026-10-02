hl.monitor({ output = "DP-2", mode = "1920x1080@60", position = "0x0", scale = 1 })
hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "-1920x0", scale = 1 })
hl.monitor({ output = "HDMI-A-2", mode = "1920x1080@60", position = "1920x0", scale = 1 })

hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "ctrl:nocaps",
        kb_rules = "",
    },
})

for workspace = 1, 9 do
    local monitor
    if workspace <= 3 then
        monitor = "HDMI-A-1"
    elseif workspace <= 6 then
        monitor = "DP-2"
    else
        monitor = "HDMI-A-2"
    end
    hl.workspace_rule({ workspace = tostring(workspace), monitor = monitor })
end
