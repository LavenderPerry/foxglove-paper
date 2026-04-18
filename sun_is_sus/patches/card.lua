local M = {}

function M.patch(src, a, b)
    return love.patch.apply(src, {
        before = "self.children.center.states.hover = self.states.hover",
        payload = [[
        if self.config.center == G.P_CENTERS["c_sun"] then
            local scale = G.SETTINGS.GRAPHICS.texture_scaling
            self.children.center = Sprite(self.T.x, self.T.y, self.T.w, self.T.h, {name="Tarot", image = love.graphics.newImage("foxglove_mods/sun_is_sus/"..scale.."x/sus.png", {mipmaps = true, dpiscale = scale}), px=71, py=95}, {x=0, y=0})
        end
        ]]
    })
end

return M
