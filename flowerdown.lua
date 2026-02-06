local levelsMined = 0

local function flowerDown()
	turtle.digDown()
	turtle.down()
	levelsMined = levelsMined + 1

	for i = 1, 4 do
		turtle.dig()
		turtle.turnRight()
	end
end

local function resurface()
	for i = 1, levelsMined do
		turtle.up()
	end
end

while true do
	flowerDown()

	if turtle.detectDown() == true and turtle.digDown() == false then
		resurface()
		print("Levels mined: " .. levelsMined)
		return
	end
end
