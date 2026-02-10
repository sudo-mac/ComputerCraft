local levelsMined = 0

local function resurface()
	for i = 1, levelsMined do
		turtle.up()
	end
end

local function tunneldown()
 levelsMined = 0
  sucess, data = turtle.inspectDown()

	term.clear()
	term.setCursorPos(1, 1)
	print("Mining down a 2x1 tunnel pattern.")

	repeat
		turtle.digDown()
		turtle.down()
  turtle.dig()
  levelsMined = levelsMined + 1
  success, data = turtle.inspectDown()
		until success and data.name == "minecraft:bedrock"
			

  print()
			print("Bedrock Reached! Returning to surface.")
			print()
			print(levelsMined .. " levels mined.")

			
			for i = 
		end

		levelsMined = levelsMined + 1

		turtle.dig()
	end
end

tunneldown()
