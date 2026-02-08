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

local function harvest()
	turtle.forward()
	inspected, data = turtle.inspectDown()

	if inspected and data.name == "minecraft:wheat" and data.state["age"] == 7 then
		turtle.digDown()
		sort()
		turtle.select(1)
		turtle.placeDown()
	elseif inspected and data.name == "minecraft:beetroots" and data.state["age"] == 3 then
		turtle.digDown()
		sort()
		turtle.select(2)
		turtle.placeDown()
	elseif inspected and data.name == "minecraft:potatoes" and data.state["age"] == 7 then
		turtle.digDown()
		sort()
		turtle.select(14)
		turtle.placeDown()
	end
end

local function simplefarm(length)
	turtle.up()

	for i = 1, length do
		harvest()
	end

	for i = 1, length do
		turtle.back()
	end

	turtle.down()
end

simplefarm(5)
