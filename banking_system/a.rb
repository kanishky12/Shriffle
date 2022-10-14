# def user_login
  # print "Enter username: "
  # username_access = $stdin.gets.chomp
  # CSV.foreach('bank.csv', headers: true) do |row|
  # if row["Email"] == username_access then
  #   break
  # end
  # end
  # print "Enter password: "
  # password_access = $stdin.gets.chomp
  # CSV.foreach('bank.csv', headers: true) do |row|
  # if row["Password"] == password_access then
  #   access
  #   break
  # else
  #   puts 'wrong email or password'
  #   break
  # end
  # end
  # end

    # def update
  #   CSV.foreach( "bank.csv", headers: true ).with_index( 2 ) do |row, row_number|
  #   puts row[2]
  # end
  # end

  # def duplicate
  # csv = CSV.foreach('bank.csv', headers: true)
  #   print "Enter Name: "
  #   name_access = gets.chomp
  #     begin
  #     row = csv.detect { |e| e["Name"] == name_access }
  #     print "Enter email: "
  #     email_access = gets.chomp
  #     row["Email"] ==   email_access
  #     print "Enter password: "
  #     row["Password"] == password_access
  #     puts "user logged in successfully"
  #     access
  #   end
  # end

  def duplicate
  csv = CSV.foreach('bank.csv', headers: true)

    print "Enter Name: "
    @name = gets.chomp
    print "Enter email: "
    @email = gets.chomp

    if row = csv.detect { |e| e["Name"] == @name && e["Email"] == @email}
      puts 'Duplicate data'
    else
      puts 'User registered'
    end
  end
  duplicate
