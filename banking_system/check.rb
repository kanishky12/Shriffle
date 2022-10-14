class Check
  def duplicate
    csv = CSV.foreach('bank.csv', headers: true)

    print "Enter Name: "
    name_access = gets.chomp
    print "Enter email: "
    email_access = gets.chomp

    if row = csv.detect { |e| e["Name"] == name_access && e["Email"] == email_access}
      puts 'Duplicate data'
    else
      puts 'User registered'
    end
  end
end
chk = Check.new
chk.duplicate
