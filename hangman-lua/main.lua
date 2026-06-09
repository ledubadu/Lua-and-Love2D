-- this is from caserl
-- here is the link to the video https://www.youtube.com/shorts/F1vOd34Gn8s

local words = { "TOTAL", "THIS", "THAT" }
function love.load()
	love.window.setMode(360, 640, { resizable = false })
	love.graphics.setDefaultFilter("nearest", "nearest")

	target_word = words[love.math.random(#words)]
	revealed_letter = {}

	for i = 1, #target_word do
		revealed_letter[i] = "_"
	end

	lives = 6
	message = ""

	keyboard = {}

	local letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	local key_w, key_h = 40, 40
	local spacing = 5
	local cols = 7
	local start_y = 400

	local total_width = cols * key_w + (cols - 1) * spacing
	local start_x = (360 - total_width) / 2

	for i = 1, #letters do
		local col = (i - 1) % cols
		local row = math.floor((i - 1) / cols)
		local x = start_x + col * (key_w + spacing)
		local y = start_y + row * (key_h + spacing)
		keyboard[i] = {
			letter = letters:sub(i, i),
			x = x,
			y = y,
			w = key_w,
			h = key_h,
			used = false,
		}
	end
end

function love.mousepressed(mx, my, button)
	if button ~= 1 or lives == 0 then
		return
	end

	for _, key in ipairs(keyboard) do
		if not key.used and mx >= key.x and mx <= key.x + key.w and mx >= key.y and my <= key.y + key.h then
			key.used = true
			local hit = false
			for i = 1, #target_word do
				if target_word:sub(i, i) == key.letter then
					revealed_letter[i] = key.letter
					hit = true
				end
			end

			if not hit then
				lives = lives - 1
				if lives <= 0 then
					message = "dead" .. target_word
				end
			elseif table.concat(revealed_letter) == target_word then
				message = "winner"
			end
		end
	end
end

function love.update(dt) end
function love.draw()
	love.graphics.clear(0.2, 0.3, 0.5)

	love.graphics.setColor(1, 1, 1)
	love.graphics.printf(table.concat(revealed_letter, " "), 0, 200, 360, "center")
	love.graphics.printf("Lives: " .. lives, 0, 250, 360, "center")
	love.graphics.printf(message, 0, 280, 360, "center")

	for _, key in ipairs(keyboard) do
		if key.used then
			love.graphics.setColor(0.2, 0.2, 0.2)
		else
			love.graphics.setColor(0.4, 0.4, 0.4)
		end

		love.graphics.rectangle("fill", key.x, key.y, key.w, key.h, 4, 4)
		love.graphics.setColor(1, 1, 1)
		love.graphics.printf(key.letter, key.x, key.y + 12, key.w, "center")
	end
end

-- it does not work shocker!!
