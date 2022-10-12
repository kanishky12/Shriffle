module School
	def print_name
		puts "indore public school"
	end
end


class Student
	include School
	def location 
		puts "indore"
	end
end

# obj = Student.new
# obj.print_name