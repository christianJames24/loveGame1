function love.load()
   image = love.graphics.newImage("Images/501.png")
   love.graphics.setNewFont(12)
   love.graphics.setColor(0,0,0)
   love.graphics.setBackgroundColor(255,255,255)
end

function love.draw()
    love.graphics.draw(image, 100,100)
end