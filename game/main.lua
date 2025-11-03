function love.load()
   image = love.graphics.newImage("Images/501.png")
   love.graphics.setNewFont(12)
   love.graphics.setColor(255,255,255)
   love.graphics.setBackgroundColor(0,0,0)
   image2 = love.graphics.newImage("Images/501.png")
   love.graphics.setNewFont(12)
   love.graphics.setColor(255,255,255)
   love.graphics.setBackgroundColor(0,0,0)
end

xWalk = 0
yWalk = 0
function love.update(dt)
   -- if love.keyboard.isDown("s") or love.keyboard.isDown("down") then
   --  yWalk = yWalk + 2
   -- end
   -- if love.keyboard.isDown("w") or love.keyboard.isDown("up") then
   --  yWalk = yWalk - 2
   -- end
   -- if love.keyboard.isDown("d") or love.keyboard.isDown("right") then
   --  xWalk = xWalk + 2
   -- end
   -- if love.keyboard.isDown("a") or love.keyboard.isDown("left") then
   --  xWalk = xWalk - 2
   -- end
   if love.keyboard.isDown("space") then
      
   end

   penis = love.mouse.getPosition( )
   piplupX = love.mouse.getX()
   piplupY = love.mouse.getY()
   piplupxd = tostring(piplupX)..", "..tostring(piplupY)

   xWalk = piplupX
   yWalk = piplupY
end

function love.draw()
   love.graphics.draw(image, xWalk, yWalk, 0, 0.5)
   love.graphics.print("move mouse pls", 100, 10)
   -- love.graphics.print(love.mouse.getPosition(),10,10)
   love.graphics.print(piplupxd, 10,10)
end

function love.conf(t)
    t.window.width = 854
    t.window.height = 480
end