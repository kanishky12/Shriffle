# frozen_string_literal: true

require 'rubocop'
require './calculate'

# Code Starts here
class Calculator
  extend Calculate
  a = 1
  while a
    Calculator.choose_an_option
    case @num
    when 1
      Calculator.user_input
      Calculator.addition
    when 2
      Calculator.user_input
      Calculator.subtraction
    when 3
      Calculator.user_input
      Calculator.multiplication
    when 4
      Calculator.user_input
      Calculator.division
    else
      puts 'Enter correct number'
    end
    print 'Do you want to continue Y/N : '
    check = gets.chomp
    check == 'Y' ? next : break
  end
end
