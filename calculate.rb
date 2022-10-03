module Calculate
  def user_input
    print "Enter 1st number : "
 		@a = gets.chomp.to_i
 		print "Enter 2nd number : "
 		@b = gets.chomp.to_i
 	end

 	def choose_an_option
 	  puts "Enter 1 for addition"
    puts "Enter 2 for Subtraction"
    puts "Enter 3 for Multiplication"
    puts "Enter 4 for Division"
    @num = gets.chomp.to_i
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

