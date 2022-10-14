# frozen_string_literal: true

require 'csv'
require 'byebug'

# code starts here

class Bank
  def initialize(balance = 0)
    @balance = balance
  end

  def check
    puts 'Do you have account in HDFC bank y/n'
    chk = gets.chomp
    if chk == 'y'
      user_login
    else
      user_signup
    end
  end

  def user_signup
    puts 'Enter details to create your account'
    headers = %w[Name Email Password]
    CSV.open('bank.csv', 'a+') do |csv|
      csv << headers if csv.count.eql? 0
      print 'Enter name : '
      _name = gets.chomp
      print 'Enter email: '
      email = gets.chomp
      print 'Enter password: '
      password = gets.chomp
      if _name == '' || email == '' || password == ''
        puts 'Wrong input please check'
      else
        csv << [_name, email, password]
        puts 'Registration Successful'
        puts 'Restart to login'
      end
    end
  end

  def user_login
    csv = CSV.foreach('bank.csv', headers: true)
    print 'Enter Email: '
    email_access = gets.chomp
    byebug
    begin
      row = csv.detect { |e| e['Email'] == email_access }
    raise 'No such user' unless row
      print 'Enter password: '
      password_access = gets.chomp
    raise 'Wrong password' unless row['Password'] == password_access

      puts 'user logged in successfully'
      access
    end
  end

  def access
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
      puts 'Try again'
    end
  end
end

def display_balance
  puts "Balance: #{@balance}."
end

def deposit
  puts 'Enter amount to deposit'
  deposit = gets.chomp.to_i
  @balance += deposit
  puts "Deposited: #{deposit}. Updated balance: #{@balance}."
end

def withdraw
  puts 'Enter amount to withdraw'
  withdraw = gets.chomp.to_i
  if withdraw <= @balance
    @balance -= withdraw
    puts "Withdraw: #{withdraw}. Updated balance: #{@balance}."
  else
    puts "You don't have enough balance: #{@balance}"
  end
end

bank = Bank.new
bank.check
# bank.duplicate
# bank.update
