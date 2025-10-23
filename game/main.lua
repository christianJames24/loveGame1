function love.load()
   image = love.graphics.newImage("Images/501.png")
   love.graphics.setNewFont(12)
   love.graphics.setColor(255,255,255)
   love.graphics.setBackgroundColor(0,0,0)
end

xWalk = 0
yWalk = 0
function love.update(dt)
   if love.keyboard.isDown("s") or love.keyboard.isDown("down") then
    yWalk = yWalk + 2
   end
   if love.keyboard.isDown("w") or love.keyboard.isDown("up") then
    yWalk = yWalk - 2
   end
   if love.keyboard.isDown("d") or love.keyboard.isDown("right") then
    xWalk = xWalk + 2
   end
   if love.keyboard.isDown("a") or love.keyboard.isDown("left") then
    xWalk = xWalk - 2
   end
end

function love.draw()
   love.graphics.draw(image, xWalk, yWalk, 0, 0.5)
   love.graphics.print("Click and drag piplup around or use the arrow keys", 10, 10)
end

function love.conf(t)
    t.window.width = 1024
    t.window.height = 768
end