local levelsMined

function stairsDown()
	while true do
		turtle.digDown()
		turtle.down()
		turtle.dig()
		turtle.forward()
		turtle.dig()
	end
end

function makeTurn()
	turtle.forward()
	turtle.turnRight()
	turtle.dig()
	turtle.forward()
	turtle.turnRight()
end

function stairsUp()
	turtle.dig()
	turtle.forward()
	turtle.digUp()
	turtle.dig()
	turtle.up()
end

function reset()
	turtle.forward()
	turtle.forward()
	turtle.turnRight()
	turtle.forward()
	turtle.turnRight()
end

stairsDown()
if turtle.detectDown() == true and turtle.digDown() == false then
	makeTurn()
	stairsUp()
	reset()
end
