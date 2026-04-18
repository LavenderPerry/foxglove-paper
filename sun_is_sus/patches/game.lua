local M = {}

function M.patch(src, a, b)
    return love.patch.apply(src, {
        before = "init_localization()",
        payload = 'self.localization.descriptions.Tarot.c_sun.name = "The Sus"'
    })
end

return M
