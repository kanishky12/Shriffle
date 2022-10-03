require './calculate'

# Code Starts here
class Calculator
  extend Calculate
  a = 1
  while a
    Calculator.choose_an_option
    Calculator.user_input
    case @num
    when 1
      Calculator.addition
    when 2
      Calculator.subtraction
    when 3
      Calculator.multiplication
    when 4
      Calculator.division
    else
      puts 'Enter correct number'
    end
    print 'Do you want to continue Y/N : '
    check = gets.chomp
    check == 'Y' ? next : break
  end
end
