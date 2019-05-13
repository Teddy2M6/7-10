
-----------------------------------------------------------------------------------------
--
-- Created by: Aden Rao
-- Created on: 
-- 
-- This file animates one knight character to walk and the other ninja character to run. 
-----------------------------------------------------------------------------------------

-- Hides status bar
display.setStatusBar(display.HiddenStatusBar)
 
-- Sets what center x and y is 
centerX = 110
centerY = 80

-- Sets the sheet height and width for the knight standing.
local sheetOptionsIdle =
{
    width = 587,
    height = 707,
    numFrames = 10
}

-- Gets knight standing sheet
local sheetIdleKnight = graphics.newImageSheet( "./assets/spritesheets/knightIdle.png",  sheetOptionsIdle )

-- Sets height and width for the knight walking sheet.
local sheetOptionsWalk =
{
    width = 587,
    height = 707,
    numFrames = 10
}

-- Gets knight walking sheet
local sheetWalkingKnight = graphics.newImageSheet( "./assets/spritesheets/knightWalking.png", sheetOptionsWalk )


-- sequences table
local sequence_data = {
    -- consecutive frames sequence
    {
        name = "idle",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetIdleKnight
    },
    {
        name = "walk",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetWalkingKnight
    }
}

-- Gets the knight spite from the stand knight sheet and sets the position and the size
local knight = display.newSprite( sheetIdleKnight, sequence_data )
knight.x = centerX
knight.y = centerY
knight.xScale = 160/587
knight.yScale = 220/707

-- Plays the knight animation
knight:play()

-- After a short time, swap the sequence to 'seq2' which uses the second image sheet which is the knight walking
local function swapSheet()
    knight:setSequence( "walk" )
    knight:play()
    print("walk")
end

-- Swaps sheet after 2 seconds
timer.performWithDelay( 2000, swapSheet )

----------------

-- Sets the sheet height and width for the ninja standing.
local sheetOptionsIdle =
{
    width = 232,
    height = 439,
    numFrames = 10
}

-- Gets ninja standing sheet
local sheetIdleNinja = graphics.newImageSheet( "./assets/spritesheets/ninjaBoyIdle.png",  sheetOptionsIdle )

-- Sets height and width for the ninja running sheet.
local sheetOptionsWalk =
{
    width = 363,
    height = 458,
    numFrames = 10
}

-- Gets ninja running sheet
local sheetWalkingNinja = graphics.newImageSheet( "./assets/spritesheets/ninjaBoyRun.png", sheetOptionsWalk )


-- sequences table
local sequence_data = {
    -- consecutive frames sequence
    {
        name = "idle",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetIdleNinja
    },
    {
        name = "walk",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetWalkingNinja
    }
}

-- Gets the ninja spite from the stand knight sheet and sets the position and the size
local ninja = display.newSprite( sheetIdleNinja, sequence_data )
ninja.x = 220
ninja.y = 360
ninja.xScale = 160/363
ninja.yScale = 220/458

-- Plays the knight animation
ninja:play()

-- After a short time, swap the sequence to 'seq2' which uses the second image sheet which is the ninja running
local function swapSheet()
    ninja:setSequence( "walk" )
    ninja:play()
    print("walk")
end

-- Swaps sheet after 2 seconds
timer.performWithDelay( 2000, swapSheet )