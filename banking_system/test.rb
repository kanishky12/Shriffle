require 'csv'
class Bank

  def initialize(name, balance=0)
  @name = name
  @balance = balance
  end

  # private

  def pin
  @pin = 123
  end

  def pin_check
  puts "Welcome to HDFC Bank, #{@name}!\n" + "To access your account, enter your pin"
  @input_pin = gets.chomp.to_i
  end

  # public
  def user_db
    headers = ['Name','email','password']

    CSV.open("data.csv", "a+") do |csv|
    csv << headers if csv.count.eql? 0
    print 'Enter name : '
    _name = gets.chomp
    print 'Enter email : '
    phone = gets.chomp
    print 'Enter password : '
    city = gets.chomp
    csv << [_name,email,pass]
    end
    end
  def access
  if pin_check == pin
    puts 'Enter 1 for Account Balance'
    puts 'Enter 2 for Deposit money'
    puts 'Enter 3 to withdraw money'
    action = gets.chomp.to_i

  case action
  when 1
    display_balance
  when 2
    deposit
  when 3
    withdraw
  else
    puts "Try again"
  end
  else puts "Incorrect PIN : Try again"
  end
  end

  def amount
    puts "Input the amount"
    @money = gets.to_i
  end

  def deposit
    @balance += amount
    puts "Deposited: #{@money}. Updated balance: #{@balance}."
  end

  def display_balance
    puts "Balance: #{@balance}."
  end

  def withdraw
    if  amount <= @balance
      @balance -= @money
      puts "Withdraw: #{@money}. Updated balance: $#{@balance}."
    else
      puts "You don't have enough balance: #{@balance}"
    end
  end
end


  bank = Bank.new("kanishk",12000)
  bank.user_db
  bank.access
