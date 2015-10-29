require_relative "shape"
require_relative "line"
require_relative "rectangle"

class Square < Rectangle

	def initialize(x, y, w, color)
		super(w, w, x, y, color)
		@h = w
	end



end