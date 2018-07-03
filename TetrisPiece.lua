local Object = require 'classic'
local TetrisPiece = Object:extend()
function TetrisPiece:new(opts)
    for k, v in pairs(opts) do
        print(k, v)
        self[k] = v
    end
end

function TetrisPiece:draw(x, y, size)
    size = size or 10
    for yp, row in ipairs(self.shape) do
        for xp, block in ipairs(row) do
            if block then
                love.graphics.rectangle('fill', x + xp * size, y + yp * size, size, size)
            end
        end
    end
end

return TetrisPiece