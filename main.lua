--[[

MIT License

Copyright (c) 2017 Selahattin M. Dulgeroglu

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
]]


application:setOrientation(Application.LANDSCAPE_LEFT)

local container = Sprite.new()

local b1 = EndlessSprite.new("gfx/b1 320px.png")
local b2 = EndlessSprite.new("gfx/b2 320px.png")
local b3 = EndlessSprite.new("gfx/b3 320.png")
local b4 = EndlessSprite.new("gfx/b4 320.png")

container:addChild(b4)
container:addChild(b3)
container:addChild(b2)
container:addChild(b1)


local scaleRate = 1

print((application:getDeviceWidth()*scaleRate)/container:getHeight())

container:setScale((application:getDeviceWidth()*scaleRate)/container:getHeight(),
	               (application:getDeviceWidth()*scaleRate)/container:getHeight())


local xAnchor = 0

container:setX(application:getDeviceWidth()*xAnchor)

container:setY((application:getDeviceWidth()-container:getHeight())*0.5)



stage:addChild(container)

local c = 4


stage:addEventListener(Event.ENTER_FRAME,
					   function()
					   
							b1:moveBy(c)
							b2:moveBy(c*0.75)
							b3:moveBy(c*0.5)
							b4:moveBy(c*0.25)
					   
					   
					   end
					   
					   )