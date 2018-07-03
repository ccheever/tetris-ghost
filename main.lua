local TetrisPiece = require "TetrisPiece"

local shapes
do
    local X = true
    local _ = false
    shapes = {
        {{X, X, X, X}, {_, _, _, _}},
        {{X, X, X, _}, {_, _, X, _}},
        {{X, X, X, _}, {X, _, _, _}},
        {{X, X, _, _}, {X, X, _, _}},
        {{_, X, X, _}, {X, X, _, _}},
        {{X, X, X, _}, {_, X, _, _}},
        {{X, X, _, _}, {_, X, X, _}},
    }
end

local rod = TetrisPiece {shape = shapes[2]}
print("A rod: ", rod)
function love.draw()
    love.graphics.print("Hello World!", 400, 300)
    rod:draw(300, 100, 30)

    for i, bm in ipairs(shapes) do
        for y, row in ipairs(bm) do
            for x, val in ipairs(row) do
                if val then
                    local size = 10
                    love.graphics.rectangle("fill", 100 + x * size, 50 * i + 100 + y * size, size, size)
                end
            end
        end
    end
end
