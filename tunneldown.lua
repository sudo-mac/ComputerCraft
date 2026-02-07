local levelsMined = 0

local function resurface()
	for i = 1, levelsMined do
		turtle.up()
	end
end

local function tunneldown()
	term.clear()
	term.setCursorPos(1, 1)
	print("Mining down a 2x1 tunnel pattern.")

	while true do
		local success, data = turtle.inspectDown()

		turtle.digDown()
		turtle.down()

		if success and data.name == "minecraft:bedrock" then
			print()
			print("Bedrock Reached! Returning to surface.")
			print()
			print(levelsMined .. " levels mined.")

			resurface()
			break
		end

		levelsMined = levelsMined + 1

		turtle.dig()
	end
end

tunneldown()
