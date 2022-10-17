# frozen_string_literal: true

require 'csv'

# code starts here
class Bank
  def initialize(balance = 0)
    @balance = balance
  end

  def check
    puts 'Do you have account in HDFC bank y/n'
    chk = gets.chomp
    chk == 'y' ? user_login : user_signup
  end

  def user_input
    puts 'Enter details to create your account'
    print 'Enter name : '
    @name = gets.chomp
    print 'Enter email: '
    @email = gets.chomp.gsub(/\s+/, "")
    print 'Enter password: '
    @password = gets.chomp
  end

  def user_signup
    headers = %w[Name Email Password balance]
    CSV.open('bank.csv', 'a+') do |csv|
      user_input
      csv << headers if csv.count.eql? 0
      if @name == '' || @email == '' || @password == '' then puts 'Enter correct details'
      elsif duplicate? then puts 'Duplicate data'
      else
        csv << [@name, @email, @password, @balance]
        puts 'Registration Successful'
        access
      end
    end
  end

  def duplicate?
    csv = CSV.read('bank.csv', headers: true)
    csv.find { |row| row['Email'] == @email }
  end

  def user_login_input
    puts '------:Welcome to HDFC bank:------'
    print 'Enter Email: '
    @email = gets.chomp.gsub(/\s+/, "")
    print 'Enter Password: '
    @password = gets.chomp
  end

  def user_login
    csv = CSV.read('bank.csv', headers: true)
    user_login_input
    if csv.find { |row| row['Email'] == @email && row['Password'] == @password }
      puts 'login successfully'
      puts '----------------------------------'
      access
    else
      puts '!!!wrong email or password try again'
    end
  end

  def access_input
    puts 'Enter 1 to check Account Balance'
    puts 'Enter 2 for Deposit money'
    puts 'Enter 3 to withdraw money'
    puts 'Enter 4 to exit'
    puts '--------------------------------------'
    @action = gets.chomp.to_i
  end

  def access
    loop do
      access_input
      case @action
      when 1 then display_balance
      when 2 then deposit
      when 3 then withdraw
      when 4 then break
      else puts 'Wrong input Try again'
      end
    end
  end

  def display_balance
    puts "Balance: #{@balance}"
    puts '--------------------------------------'
  end

  def deposit
    puts 'Enter amount to deposit'
    deposit1 = gets.chomp.to_f
    if deposit1 > 0
      @balance += deposit1
      puts "Deposited: #{deposit1} Updated balance: #{@balance}"
      puts '--------------------------------------'
    else
      puts '!!Error Deposit positive amount'
      puts '--------------------------------------'
    end
  end

  def withdraw
    puts 'Enter amount to withdraw'
    withdraw1 = gets.chomp.to_f
    if withdraw1 <= @balance && withdraw1 >0
      @balance -= withdraw1
      puts "Withdraw: #{withdraw1} Updated balance: #{@balance}"
      puts '--------------------------------------'
    elsif withdraw1 <=0
      puts '!!Error withdraw positive amount'
      puts '--------------------------------------'
    else
      puts '--------------------------------------'
      puts "You don't have enough balance: #{@balance}"
    end
  end
end

bank = Bank.new
bank.check
