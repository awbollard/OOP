class Rover
	#initializes important stuff
	def initialize(x_coord, y_coord, direction)
		@x = x_coord.to_i
		@y = y_coord.to_i
		@d = direction.to_s
	end

	#reads the string of instructions inputted
	def read_instruction (i)
		i.each do |x|
			if x == "M"
				move
			elsif x == "L"
				turnL
			elsif x == "R"
				turnR
			else
				puts "The instruction " + x + " is not valid."
			end
		end
	end

	def move
		if @d == "N"
			@y += 1
		elsif @d == "W"
			@x -= 1
		elsif @d == "S"
			@y -= 1
		elsif @d == "E"
			@x += 1
		end
	end

	def turnL
		if @d == "N"
			@d = "W"
		elsif @d == "W"
			@d = "S"
		elsif @d == "S"
			@d = "E"
		elsif @d == "E"
			@d = "N"
		end
	end
	def turnR
		if @d == "N"
			@d = "E"
		elsif @d == "E"
			@d = "S"
		elsif @d == "S"
			@d = "W"
		elsif @d == "W"
			@d = "N"
		end
	end

	def to_s
		puts "#{@x} #{@y} #{@d}"
	end
end

puts "Input plateau size: "
plateau = gets.chomp.split
puts "Input starting coordinates for rover 1: "
rover1start = gets.chomp.split
puts "Enter instructions for rover 1: "
rover1directions = gets.chomp.split("")
puts "Input starting coordinates for rover 2: "
rover2start = gets.chomp.split
puts "Enter instructions for rover 2: "
rover2directions = gets.chomp.split("")

rover1 = Rover.new(rover1start.fetch(0), rover1start.fetch(1), rover1start.fetch(2))
rover2 = Rover.new(rover2start.fetch(0), rover2start.fetch(1), rover2start.fetch(2))

rover1.read_instruction(rover1directions)
rover2.read_instruction(rover2directions)

rover1.to_s
rover2.to_s