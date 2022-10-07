require 'csv'
headers = ['Name','Phone','City']

CSV.open("data.csv", "a+") do |csv|
csv << headers if csv.count.eql? 0
print 'Enter name : '
name_ = gets.chomp
print 'Enter Phone : '
phone = gets.chomp.to_i
print 'Enter city : '
city = gets.chomp
csv << [name_,phone,city]
end

