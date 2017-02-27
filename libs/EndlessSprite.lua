
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

EndlessSprite = Core.class(Sprite)

function EndlessSprite:init(imagePath)

	local image1 = Bitmap.new(Texture.new(imagePath))
	local image2 = Bitmap.new(Texture.new(imagePath))
	
	image2:setX(image1:getWidth())
	
	self:addChild(image1)
	self:addChild(image2)
	
end

function EndlessSprite:moveBy(x)
	
		local midX = self:getX() + self:getWidth()/2 - x
		
		
		if(midX < 0) then
			self:setX(self:getX() + self:getWidth()/2)
		end
		
		self:setX(self:getX() - x)
		
	



end