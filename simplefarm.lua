local function simplefarm()
	local inspected, data
	local info

	turtle.up()
	turtle.forward()

	for i = 1, 5 do
		inspected, data = turtle.inspectDown()

		if inspected and data.state["age"] == 7 then
			turtle.digDown()
			turtle.placeDown()
		end

		turtle.forward()
	end

	for i = 1, 6 do
		turtle.back()
	end

	turtle.down()
end

simplefarm()
