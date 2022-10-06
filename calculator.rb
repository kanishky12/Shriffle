# frozen_string_literal: true

require 'rubocop'
require './calculate'

# Code Starts here
class Calculator
  extend Calculate
  option = 1
  while option
    Calculator.menu
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
    print 'Do you want to continue Yes/No : '
    check = gets.chomp
    check == 'Y' ? next : break
  end
end
