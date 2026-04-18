local M = {}

function M.patch(contents, filepath, patched)
    local res = love.patch.apply(contents, {
        after = "love.graphics.print(\"unmodded\")",
        overwrite = true,
        payload = "love.graphics.print(\"modded\")"
    }, {
        after = "love.graphics.setBackgroundColor(1, 0, 1)",
        overwrite = true,
        payload = "love.graphics.setBackgroundColor(0, 1, 0)"
    })
    print(res)
    return res
end

return M
