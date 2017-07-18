function love.load()
	rcoll = {}
	rstrr = "1234567890-=qwertyuiop[]asdfghjkl;'zxcvbnm,./'"
	rstrr:gsub(".",function(c) table.insert(rcoll,c) end)
	rposs = love.math.random(1, #rcoll)
	st = rcoll[rposs]
	print(st)
	font = love.graphics.getFont()
	font:setFilter("nearest")
	love.graphics.setFont(font)
end

function love.textinput(inp)
	if inp == st then
		rposs = love.math.random(1, #rcoll)
		st = rcoll[rposs]
		print(st)		
		love.graphics.setBackgroundColor(35, 209, 139)
	else
		love.graphics.setBackgroundColor(58, 139, 228)
	end
end

function love.draw()
	love.graphics.print(tostring(st), 350, 100, 0, 15, 15)
end