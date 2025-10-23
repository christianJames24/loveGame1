function love.load()
   image = love.graphics.newImage("Images/501.png")
   love.graphics.setNewFont(12)
   love.graphics.setColor(0,0,0)
   love.graphics.setBackgroundColor(255,255,255)
end

xWalk = 0
yWalk = 0
function love.update(dt)
   if love.keyboard.isDown("s") then
    yWalk = yWalk + 2
   end
   if love.keyboard.isDown("w") then
    yWalk = yWalk - 2
   end
   if love.keyboard.isDown("d") then
    xWalk = xWalk + 2
   end
   if love.keyboard.isDown("a") then
    xWalk = xWalk - 2
   end
end

function love.draw()
   love.graphics.draw(image, xWalk, yWalk)
   love.graphics.print("Click and drag piplup around or use the arrow keys", 10, 10)
end