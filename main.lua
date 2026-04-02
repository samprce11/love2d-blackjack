function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest")

    atlas = love.graphics.newImage("cards.png")
    local atlasWidth, atlasHeight = atlas:getDimensions()

    RankIndex = {
        Ace = 0,
        Two = 1,
        Three = 2,
        Four = 3,
        Five = 4,
        Six = 5,
        Seven = 6,
        Eight = 7,
        Nine = 8,
        Ten = 9,
        Jack = 10,
        Queen = 11,
        King = 12
    }

    SuitIndex = {
        Clubs = 0,
        Spades = 1,
        Hearts = 2,
        Diamonds = 3,
        Special = 4
    }

    coords = getCardAtlas(RankIndex.Ace, SuitIndex.Special)

    quad = love.graphics.newQuad(coords[1], coords[2], 48, 80, atlasWidth, atlasHeight)
end

function love.draw()
    love.graphics.draw(atlas, quad, 100, 100, 0, 2)
end

function getCardAtlas(rank, suit)
    local xCoord = rank * 48
    local yCoord = suit * 80

    return {xCoord, yCoord}
end