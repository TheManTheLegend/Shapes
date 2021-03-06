require_relative "shape"
require_relative "line"


class Rectangle < Shape

	def initialize(x, y, w, h, color)
		@x = x
		@y = y
		@w = w
		@h = h
		@color = color
		@lines = []
		@lines.push(create_left)
		@lines.push(create_right)
		@lines.push(create_top)
		@lines.push(create_bottom)
		add_lines(@lines)
		
	end

	def fill
		for i in (0..@w)
			Line.new(@x, i + @y, @x+@w, i + @y, @color).draw
		end
		for i in (0..@h)
			Line.new(@x, i + @y, @x+@w, i + @y, @color).draw
		end
	end	

	def create_right
		Line.new(@x + @w, @y, @x + @w, @y + @h, @color)
	end

	def create_left
		Line.new(@x, @y, @x, @y + @h, @color)
	end

	def create_top
		Line.new(@x, @y, @x + @w, @y, @color)
	end

	def create_bottom
		Line.new(@x, @y + @h, @x + @w, @y + @h, @color)
	end

end