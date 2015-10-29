require "gosu"
require_relative "square"

class Main < Gosu::Window

	def initialize
		super(640, 480)

		@shape = Rectangle.new(90, 90, 100, 150, Gosu::Color.argb(0xff_ff0000))
	end

	def draw
		@shape.draw
	end

end

window = Main.new
window.show