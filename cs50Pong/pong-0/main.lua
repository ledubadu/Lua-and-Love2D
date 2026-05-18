-- love.load()
-- 	used for intialization game state at the very beginning

-- love.update(dt)
-- delta time is the seconds asyncronous of the process of frames

-- love.draw()
-- called for drawing things

-- love2d expects are a main.lua so be careful about it

-- important fucntions

-- love.graphics.printf(text, x,y, [width], [align])
-- printf here is a formatter printing

-- love.window.setMode (width, height, parameters)
-- this helps with verticle and horizontal sync of screens for better resolution

-- Global vars
-- as these are all caps, these are treated as constants

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

function love.load()
	love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
		fullscreen = false,
		vsync = true,
		resizable = false,
	})
end

function love.draw()
	love.graphics.printf("Hello Pong!", 0, (WINDOW_HEIGHT / 2) - 6, WINDOW_WIDTH, "center")
end
