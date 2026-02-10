local function sort()
	slot = 0

	repeat
		slot = slot + 1
		turtle.select(slot)
		item = turtle.getItemDetail()

		if item ~= nil and item.name == "minecraft:wheat_seeds" then
			turtle.transferTo(1)
		elseif item ~= nil and item.name == "minecraft:beetroot_seeds" then
			turtle.transferTo(2)
		elseif item ~= nil and item.name == "minecraft:wheat" then
			turtle.transferTo(13)
		elseif item ~= nil and item.name == "minecraft:potato" then
			turtle.transferTo(14)
		elseif item ~= nil and item.name == "minecraft:beetroot" then
			turtle.transferTo(15)
		end
	until slot == 16

	turtle.select(1)
end

local function simplefarm()
	turtle.up()
	turtle.forward()

	inspected, data = turtle.inspectDown()

	if inspected and not data.name:match("fence") then
		if data.name == "minecraft:wheat" and not data.state["age"] == 7 then
			if data.stage["age"] == 7 then
				turtle.digDown()
				sort()
				turtle.select(1)
				turtle.placeDown()
			else
				turtle.forward()
			end
		elseif data.name == "minecraft:beetroots" and not data.state["age"] == 3 then
			if data.state["age"] == 3 then
				turtle.digDown()
				sort()
				turtle.select(1)
				turtle.placeDown()
			else
				turtle.forward()
			end
		elseif data.name == "minecraft:potatoes" and not data.state["age"] == 7 then
			if data.state["age"] == 7 then
				turtle.digDown()
				sort()
				turtle.select(1)
				turtle.placeDown()
			else
				turtle.forward()
			end
		end
	else
		turtle.forward()
	end

	for i = 1, 11 do
		turtle.back()
	end
end

simplefarm()
