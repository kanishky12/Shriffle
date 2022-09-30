# frozen_string_literal: true

require 'byebug'
# require 'rubocop'
require './calcmodule'
# code start here
class Calc
  extend Calculator
  byebug
  a = 1
  while a
    Calc.choose
    num = gets.chomp.to_i
byebug
    case num
    when 1
      Calc.enter
      Calc.addition
    when 2
      Calc.enter
      Calc.subtraction
    when 3
      Calc.enter
      Calc.multiplication
    when 4
      Calc.enter
      Calc.division
    else
      puts 'Enter correct number'
    end
    print 'Do you want to continue Y/N : '
    check = gets.chomp
    check == 'Y' ? next : break
  end
end
