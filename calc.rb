a = 1
while a>0 do
  puts "Enter 1 for addition"
  puts "Enter 2 for Subtraction"
  puts "Enter 3 for Multiplication"
  puts "Enter 4 for Division"

 num = gets.chomp.to_i

 case num
 	when 1
 		print "Enter 1st number : "
 		a = gets.chomp.to_i
 		print "Enter 2nd number : "
 		b = gets.chomp.to_i
 		puts "Result is : #{a+b}"
 	when 2
 		print "Enter 1st number : "
 		a = gets.chomp.to_i
 		print "Enter 2nd number : "
 		b = gets.chomp.to_i
 		puts "Result is : #{a-b}"
 	when 3
 		print "Enter 1st number : "
 		a = gets.chomp.to_i
 		print "Enter 2nd number : "
 		b = gets.chomp.to_i
 		puts "Result is : #{a*b}"
 	when 4
 		print "Enter 1st number : "
 		a = gets.chomp.to_i
 		print "Enter 2nd number : "
 		b = gets.chomp.to_i
 		puts "Result is : #{a/b}"
 	else
 		puts "Enter correct number"
 end
    print "Do you want to continue Y/N : "
    check = gets.chomp
    if check == 'Y' || check == 'y'
    	puts "-----------------------------------------------"
    	next
    else
    	break
    end
end

 	