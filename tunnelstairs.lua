local levelsMined
local bedrockReached

function stairsDown()
    for i = 1,9 do
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
    for i = 1,9 do
        turtle.dig()
        turtle.forward()
        turtle.digUp()
        turtle.dig()
        turtle.up()
    end
end

function reset()
    turtle.forward()
    turtle.forward()
    turtle.turnRight()
    turtle.forward()
    turtle.turnRight()
end

stairsDown()
makeTurn()
stairsUp()
reset()
