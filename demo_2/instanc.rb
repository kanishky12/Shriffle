class CoffeeMachine
  def initialize
    @water = 100
  end

  def make_coffee
    @water -= 10
  end
  def make_tea
    @water -=20
  end
end

obj= CoffeeMachine.new
new = CoffeeMachine.new
puts(new.make_tea)
puts(obj.make_coffee)