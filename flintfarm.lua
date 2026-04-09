local function flintfarm()
	local blocks = turtle.getItemDetail()

	while true do
		if blocks == nil or blocks.name ~= "minecraft:gravel" then
			print("No gravel in slot!")
			break
		elseif blocks.count == 1 then
			while true do
				local blocks = turtle.getItemDetail()

				turtle.place()
				turtle.dig()

				if blocks == nil then
					print("Out of gravel!")
					print()
					print(turtle.getItemDetail(2).count .. " pieces of flint farmed.")
					return
				elseif blocks.name == "minecraft:flint" then
					turtle.transferTo(2)
				end

				if blocks == nil then
					break
				end
			end
		else
			for i = 1, blocks.count do
				turtle.place()
				turtle.up()
			end

			for i = 1, blocks.count do
				turtle.down()
			end

			repeat
				turtle.dig()
				blocks = turtle.getItemDetail()

				if blocks.name == "minecraft:flint" then
					turtle.transferTo(2)
				end
			until turtle.inspect() == false

			if blocks == nil then
				break
			end
		end
	end
end

flintfarm()
