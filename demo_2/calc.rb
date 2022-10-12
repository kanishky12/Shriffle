require './calcmodule.rb'

class Calc
 @@x = 1
  while @@x>0 do
    puts "Enter 1 for addition"
    puts "Enter 2 for Subtraction"
    puts "Enter 3 for Multiplication"
    puts "Enter 4 for Division"

     num = gets.chomp.to_i

    case num
 	    when 1
 	     extend Calculator
       Calc.enter
       Calc.addition
 	    when 2
       extend Calculator
       Calc.enter
 	    when 3
       extend Calculator
       Calc.enter
       Calc.multiplication
 	    when 4
       extend Calculator
       Calc.enter
       Calc.division
 	    else
 		   puts "Enter correct number"
    end
        print "Do you want to continue Y/N : "
        check = gets.chomp
      if check == 'Y' || check == 'y'
         puts "----------------------------"
         next
      else
         break
      end
  end
end

