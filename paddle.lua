paddle = {}

function paddle.load()
    paddle.x = 200
    paddle.y = 500
    paddle.width = TILE_SIZE * 4
    paddle.height = TILE_SIZE
    paddle.speed = 200
end

function paddle.update(dt)
    if love.keyboard.isDown('left', 'a') then
        paddle.x = paddle.x - paddle.speed * dt
    end
    if love.keyboard.isDown('right', 'd') then
        paddle.x = paddle.x + paddle.speed * dt
    end

    if paddle.x < 0 then
        paddle.x = 0
    end
    if paddle.x + paddle.width > WIDTH then
        paddle.x = WIDTH - paddle.width
    end
end

function paddle.draw()
    love.graphics.rectangle("fill", paddle.x, paddle.y, paddle.width, paddle.height)
end