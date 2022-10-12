class Vehicle
    ['red', 'blue', 'yellow'].each do |color|
        define_method("#{color}") do
            puts "The color of car is #{color}"
        end
    end
end

obj = Vehicle.new
obj.red
obj.send('yellow')
obj.send('blue')