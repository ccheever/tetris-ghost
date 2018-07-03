local Object = require "classic"

local TetrisPiece = Object:extend()
function TetrisPiece:new(opts)
    for k, v in opts do
        self[k] = v
    end
end

local shapes = {
    {{1, 1, 1, 1}, {0, 0, 0, 0}},
    {{1, 1, 1, 0}, {0, 0, 1, 0}},
    {{1, 1, 1, 0}, {1, 0, 0, 0}},
    {{1, 1, 0, 0}, {1, 1, 0, 0}},
    {{0, 1, 1, 0}, {1, 1, 0, 0}},
    {{1, 1, 1, 0}, {0, 1, 0, 0}},
    {{1, 1, 0, 0}, {0, 1, 1, 0}}
}

function love.draw()
    love.graphics.print("Hello World!", 400, 300)

    for i, bm in ipairs(shapes) do
        for y, row in ipairs(bm) do
            for x, val in ipairs(row) do
                if val > 0 then
                    local size = 10
                    love.graphics.rectangle("fill", 100 + x * size, 50 * i + 100 + y * size, size, size)
                end
            end
        end
    end
end
