--load stuff into game at the start of the game
function love.load()
    player   = love.graphics.newImage("player.png")  --load in image for player
    enemy    = love.graphics.newImage("enemy.png")   --load image for enemy
    PLAYER_X = 10    --player's x position
    PLAYER_Y = 10   --player's y position
    HEIGHT   = 150  --height of bounds
    WIDTH    = 150  --width of bounds
end

--print to screen on every frame
function love.draw()
    love.graphics.draw(player,PLAYER_X,PLAYER_Y)  --draw player to screen. here we only used the first three arguments, the rest are optional.
    love.graphics.draw(enemy,70,70)   --draw enemy to screen. here we only used the first three arguments, the rest are optional.
end

--function which handles keyboard input.
function love.keypressed(key)
    --check to see which key was pressed. if it was 'wasd' then move the player around
    if key == "w" then
        PLAYER_Y = PLAYER_Y - 10   --move player up by 10 pixles
        if PLAYER_Y < 0 then      --check to make sure player isnt going out of bounds
            PLAYER_Y = 0
        end
    elseif key == "s" then
        PLAYER_Y = PLAYER_Y + 10   --move player down by 10 pixles
        if PLAYER_Y > HEIGHT then  --check to make sure player stays inside bounds
            PLAYER_Y = HEIGHT
        end
    elseif key == "a" then
        PLAYER_X = PLAYER_X - 10   --move player left by 10 pixles
        if PLAYER_X < 0 then
            PLAYER_X = 0
        end
    elseif key == "d" then
        PLAYER_X = PLAYER_X + 10   --move player right by 10 pixles
        if PLAYER_X > WIDTH then
            PLAYER_X = WIDTH
        end
    end
end



