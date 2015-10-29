require_relative "rectangle"

class Triangle < Rectangle

	def fill
		for i in (0..@w)
			Line.new(@x + @w/2, @y, @x + i, @y + @h, @color).draw
		end
	end
	def create_left
		Line.new(@x + @h/2, @y, @x, @y + @h, @color)
	end
	def create_right
		Line.new(@x + @h/2, @y, @x + @h, @y + @h, @color)
	end
	def create_bottom
		Line.new(@x, @y + @h, @x + @w, @y + @h, @color)
	end
	def create_top
		
	end
end