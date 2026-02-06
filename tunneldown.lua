local levelsMined = 0

local function tunnelDown()
	turtle.digDown()
	turtle.down()
	turtle.dig()
	levelsMined = levelsMined + 1
end

local function resurface()
	for i = 1, levelsMined do
		turtle.up()
	end
end

while true do
	tunnelDown()

	if turtle.detectDown() == true and turtle.digDown() == false then
		resurface()
		print("Levels mined: " .. levelsMined)
		return
	end
end
