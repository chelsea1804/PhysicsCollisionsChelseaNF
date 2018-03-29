-- Title: PhysicsAndCollisions
-- Name: Chelsea NF
-- Course: ICS2O/3C
-- This program uses the physic engine where objects fall and bounce off a beam 
-- and floor.
-----------------------------------------------------------------------------------

-- Hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- load physics
local physics = require("physics")

-- start physics
physics.start()
------------------------------------------------------------------------------
-- OBJECTS
------------------------------------------------------------------------------
-- Ground
local ground = display.newImage("Images/ground.png", 0, 0)

	-- Set the x and y position
	ground.x = display.contentCenterX
	ground.y = display.contentHeight
	
	-- Change the width to be the same as the screen
	ground.width = display.contentWidth

	-- Add to physics
	physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

-------------------------------------------------------------------------------

-- Create a verticle beam
local beam = display.newImage("Images/beam.png", 0, 0)
	
	-- set the x and y position
	beam.x = display.contentCenterX/5
	beam.y = display.contentCenterY*1.65

	-- set the beam size
	beam.width = display.contentWidth/2
	beam.height = display.contentHeight/10

	-- rotate the beam -60 degrees so its on an angle
	beam:rotate(45)

	-- send it to the back layer
	beam:toBack()

	-- add to physics
	physics.addBody(beam, "static", {friction=0.5, bounce=0.3})


-- Create a vertical beam2
local beam2 = display.newImage("Images/beam.png", 0, 0)

	-- set the x and y position
	beam2.x = display.contentCenterX/0.6
	beam2.y = display.contentCenterY*1.65

	-- set the beam2 size
	beam2.width = display.contentWidth/2
	beam2.height = display.contentHeight/10

	-- rotate the beam -60 degrees so its on an angle
	beam2:rotate(-45)

	-- send it to the back layer
	beam2:toBack()

	-- add to physics
	physics.addBody(beam2, "static", {friction=0.5, bounce=0.3})



------------------------------------------------------------------------------

-- create bkg
local bkg = display.newImage("Images/bkg.png", 0, 0)

	-- set the x and y position
	bkg.x = display.contentCenterX
	bkg.y = display.contentCenterY

	-- set the bkg size
	bkg.width = display.contentWidth
	bkg.height = display.contentHeight

	-- send to back
	bkg:toBack()

----------------------------------------------------------------------------
--FUNCTIONS
----------------------------------------------------------------------------

-- create the first ball
local function firstBall()
	
	-- create first ball
	local ball1 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})
end



local function secondBall()
	
	-- create second ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	--adding to phyics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.3, radius=12.5})

	-- make it smaller than the original size
	ball2:scale(0.5, 0.5)
end



-- create the third ball
local function thirdBall()
	
	-- create third ball
	local ball3 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball3, {density=1.0, friction=0.5, bounce=0.3, radius=50})

	-- make it bigger than the original size
	ball3:scale(2.0, 2.0)
end



-- create the fourth ball
local function fourthBall()
	-- create fourth ball
	local ball4 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball4, {density=1.0, friction=0.5, bounce=0.3, radius=75})

	-- make it bigger than the original size
	ball4:scale(3.0, 3.0)
end


-- create the fifth ball
local function fifthBall()
	-- create fifth ball
	local ball5 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball5, {density=1.0, friction=0.5, bounce=0.3, radius=100})

	-- make it bigger than the original size
	ball5:scale(4.0, 4.0)
end

-------
--------------------------------------------------------------------------
--TIMER DELAYS - call  each  function  after  the  given  millisecond
------------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondBall)
timer.performWithDelay( 550, thirdBall)
timer.performWithDelay( 750, fourthBall)
timer.performWithDelay( 600, fifthBall)
