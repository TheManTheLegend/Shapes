class Shape

	def initialize(width, height, x, y)
		@width = width
		@height = height
		@x = x
		@y = y
		@lines = []
	end

	def draw
		@lines.each do |line|
			line.draw
		end
		
	end	

	def add_lines(lines)
		@lines = lines
	end

end