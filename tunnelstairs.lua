local levelsMined = 0

local function resurface()
	for i = 1, levelsMined do
		turtle.dig()
		turtle.forward()
		turtle.digUp()
		turtle.dig()
		turtle.up()
	end

	turtle.forward()
	turtle.forward()
	turtle.turnRight()
	turtle.forward()
	turtle.turnRight()
end

local function makeTurn()
	turtle.forward()
	turtle.turnRight()
	turtle.dig()
	turtle.forward()
	turtle.turnRight()
end

local function tunnelstairs()
	term.clear()
	term.setCursorPos(1, 1)
	print("Mining down a 2x2 stair pattern.")

	while true do
		local success, data = turtle.inspectDown()

		turtle.digDown()
		turtle.down()

		if success and data.name == "minecraft:bedrock" then
			print()
			print("Bedrock Reached! Returning to surface.")
			print()
			print(levelsMined .. " levels mined.")

			makeTurn()
			resurface()
			break
		end

		levelsMined = levelsMined + 1

		turtle.dig()
		turtle.forward()
		turtle.dig()
	end
end

tunnelstairs()
