$global = "I'm everywhere!"

class Point
	def initialize(x_coord, y_coord)
		@x = x_coord
		@y = y_coord
		z = "foo"
	end

	#this can ALL be circumvented with attr_reader, attr_writer, and attr_accessor
	def x #getter method
		@x
	end

	def x=(x)
		@x = x
	end

	def y #getter method
		@y
	end

	def y=(y)
		@y = y
	end

	def display #instance method
		"(#{@x}, #{@y})"
	end

	def to_s #instance method
		"(#{@x}, #{@y})"
	end
end

point = Point.new(1, 2)

puts point.display