require "gosu"
require_relative "square"

class Main < Gosu::Window

	def initialize
		super(640, 480)

		@square = Square.new(90, 90, 20, Gosu::Color.argb(0xff_ff0000))
	end

	def draw
		@square.draw
	end

end

window = Main.new
window.show