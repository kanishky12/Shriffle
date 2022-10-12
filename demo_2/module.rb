f# module School
# 	def print_name
# 		puts "Delhi public school"
# 	end
# end

# require_relative 'task2'
# load 'task2.rb'
require './task2'

class Vacancy
	include School
	def available
		puts "module using include"
	end
end

obj = Vacancy.new
obj.print_name

class Vacanc
	extend School
	def available
		puts "module using extend"
	end
end

Vacanc.print_name



obj.available
m = Student.new
m.location
m.print_name

# require './math.rb'
# m = Mathex.new(1, 2)
# m.add  