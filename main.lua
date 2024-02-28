require 'paddle'

function love.load()
    TILE_SIZE = 16
    WIDTH = love.graphics.getWidth()
    HEIGHT = love.graphics.getHeight()
    paddle.load()
end

function love.update(dt)
    paddle.update(dt)
end

function love.draw()
    paddle.draw()
end