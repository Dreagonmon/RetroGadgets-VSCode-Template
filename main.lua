-- Test Main Function

gdt.VideoChip0.Mode = VideoChipMode.SingleBuffer
local font = gdt.ROM.System.SpriteSheets["StandardFont"]

function update()
    local rd = PixelData.new(0, 0, color.black)
    local time = gdt.CPU0.Time
    gdt.VideoChip0:DrawText(vec2(10,10), font, "Hello world!", color.white, color.clear)
end

gdt.CPU0.EventChannels[1] = gdt.Wifi0

---@param sender Wifi
---@param event WifiWebResponseEvent
function eventChannel1(sender, event)
    log(event.Text)
end
