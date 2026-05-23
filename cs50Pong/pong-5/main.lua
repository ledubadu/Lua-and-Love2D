WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

PADDLE_SPEED = 200

push = require("push")

function love.load()
	-- love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
	-- 	fullscreen = false,
	-- 	vsync = true,
	-- 	resizable = false,
	-- })
	math.randomseed(os.time())
	-- love.graphics.setFont(smallFont)

	love.graphics.setDefaultFilter("nearest", "nearest")

	smallFont = love.graphics.newFont("font.ttf", 32)
	scoreFont = love.graphics.newFont("font.ttf", 32)

	player1score = 0
	player2score = 0

	player1Y = 30
	player2Y = VIRTUAL_HEIGHT - 40

	ballX = VIRTUAL_WIDTH / 2 - 2
	ballY = VIRTUAL_HEIGHT / 2 - 2
	ballDx = math.random(2) == 1 and -100 or 100
	ballDy = math.random(-50, 50)

	push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
		fullscreen = false,
		vsync = true,
		resizable = false,
	})

	gameState = "start"
end

function love.update(dt)
	if love.keyboard.isDown("w") then
		player1Y = math.max(0, player1Y - PADDLE_SPEED * dt)
	elseif love.keyboard.isDown("s") then
		player1Y = math.min(VIRTUAL_HEIGHT - 20, player1Y + PADDLE_SPEED * dt)
	end
	if love.keyboard.isDown("up") then
		player2Y = math.max(0, player2Y - PADDLE_SPEED * dt)
	elseif love.keyboard.isDown("down") then
		player2Y = math.min(VIRTUAL_HEIGHT - 20, player2Y + PADDLE_SPEED * dt)
	end

	if gameState == "play" then
		ballX = ballX + ballDx * dt
		ballY = ballY + ballDy * dt
	end
end

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	elseif key == "enter" or key == "return" then
		if gameState == "start" then
			gameState = "play"
		elseif gameState == "play" then
			gameState = "start"
			ballX = VIRTUAL_WIDTH / 2 - 2
			ballY = VIRTUAL_HEIGHT / 2 - 2
			ballDx = math.random(2) == 1 and -100 or 100
			ballDy = math.random(-50, 50)
			--ballX = ballX + ballDx * dt
			--ballY = ballY + ballDy * dt
		end
	end
end

function love.draw()
	push:apply("start")

	love.graphics.clear(40 / 255, 45 / 255, 52 / 255, 255 / 255)

	if gameState == "start" then
		love.graphics.printf("Hello start Pong!", 0, 20, VIRTUAL_WIDTH, "center")
		love.graphics.setFont(smallFont)
	elseif gameState == "play" then
		love.graphics.printf("Hello play Pong!", 0, 20, VIRTUAL_WIDTH, "center")
		love.graphics.setFont(smallFont)
	end
	love.graphics.print(player1score, VIRTUAL_WIDTH / 2 - 50, VIRTUAL_HEIGHT / 3)
	love.graphics.print(player2score, VIRTUAL_WIDTH / 2 + 30, VIRTUAL_HEIGHT / 3)

	love.graphics.rectangle("fill", ballX, ballY, 5, 5)

	love.graphics.rectangle("fill", 5, player1Y, 5, 20)
	love.graphics.rectangle("fill", VIRTUAL_WIDTH - 10, player2Y, 5, 20)

	-- love.graphics.printf("Hello Pong!", 0, (VIRTUAL_HEIGHT / 2) - 6, VIRTUAL_WIDTH, "center")

	push:apply("end")
end
