# frozen_string_literal: true

# calculator code
module Calculate
  def user_input
    print 'Enter 1st number : '
    @input1 = gets.chomp.to_i
    print 'Enter 2nd number : '
    @input2 = gets.chomp.to_i
  end

  def menu
    puts 'Enter 1 for addition'
    puts 'Enter 2 for Subtraction'
    puts 'Enter 3 for Multiplication'
    puts 'Enter 4 for Division'
    @num = gets.chomp.to_i
  end

  def addition
    puts "Result of additon is : #{@input1 + @input2}"
  end

  def subtraction
    puts "Result of subtraction is : #{@input1 - @input2}"
  end

  def multiplication
    puts "Result of multiplication is : #{@input1 * @input2}"
  end

  def division
    puts "Result of division is : #{@input1 / @input2}"
  end
end
