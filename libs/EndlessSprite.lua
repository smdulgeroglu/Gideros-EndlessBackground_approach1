
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



--[[
	** ENDLESS BACKGROUND
	 -- here is a just simple implementation of a endless beackground.
	 -- it could be 


]]
EndlessSprite = Core.class(Sprite)

function EndlessSprite:init(imagePath)

	--[[
		** SEAMLESS PATTERNS
		
		-- Images or shapes which are used to create an endless backgorund must be seamless horizantally
		   or vertically if You prefer vertical scrolling. In addition, if you want to two dimensional scrolling 
		   your images must be both seamless horizantally and vertically.
		
		-- You can find detailed information about just googling or a link which I just googled below.
			** http://blog.spiralgraphics.biz/2010/07/what-is-seamless-texture-3d-texture.html **
			
		-- Width of images must be greater then the canvas width if image scrolling through horizantally.
		
		-- If your image width is bigger then 2 times canvas width you don't have to use duplicate image and 
		   append to next to original image. If not just create 2 identical image and merge them. 
	
	]]
	local image1 = Bitmap.new(Texture.new(imagePath))
	local image2 = Bitmap.new(Texture.new(imagePath))
	
	image2:setX(image1:getWidth())
	
	self:addChild(image1)
	self:addChild(image2)
	
end

function EndlessSprite:moveBy(x)
	
	--[[
			** SIMPLEST APPROACH
			
			-- if pictures midpoint passed its parent sprite position, just reposition by its halfwidth. 
			   Since Two half of the picture is identicals creates an illusion which image will be 
			   scrolling forever. 
			-- One final side note! Images are not necesserily be identical. Two different images but seamless 
			   with each other creates same effect. 
			
	]]
		local midX = self:getX() + self:getWidth()/2 - x
		
		
		if(midX < 0) then
			self:setX(self:getX() + self:getWidth()/2)
		end
		
		self:setX(self:getX() - x)
		
	



end