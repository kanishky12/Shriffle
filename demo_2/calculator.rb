load 'addition.rb'
require_relative 'subtraction.rb'
require './multiplication.rb'
require './division.rb'

class Calculator
	include Division
	extend Addition
	include Subtraction
	include Multiplication
end

Calculator.addition(13,4)

obj = Calculator.new
obj.subtraction(4,3)
obj.multiplication(40,2)
obj.division(40,4)

