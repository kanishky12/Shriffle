module Calculator
    def enter
    	print "Enter 1st number : "
 		@a = gets.chomp.to_i
 		print "Enter 2nd number : "
 		@b = gets.chomp.to_i
 	end
	def addition
 		puts "Result of additon is : #{@a+@b}"
 	end
 	def subtraction
 		puts "Result of subtraction is : #{@a-@b}"
 	end
 	def multiplication
 		puts "Result of multiplication is : #{@a*@b}"
 	end
 	def division
 		puts "Result of division is : #{@a/@b}"
 	end
end

