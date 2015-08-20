class Person
	attr_accessor :name

	def greeting
		puts "Hi, my name is #{@name}!"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object."
	end

	instructor = Instructor.new
	instructor.name = "Ilia"
	instructor.greeting
	instructor.teach
end

class Student < Person
	def learn
		puts "I get it!"
	end

	student = Student.new
	student.name = "Alec"
	student.greeting
	student.learn
	# student.teach - this doesn't work because the method is assigned
	# to the Instructor class, and Student can only take from Person
end


