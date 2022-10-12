$tax = 200
class Mobile
	@@discount = 2000
	def features(brand, processor,display)
		mobile_price = 30000
		@brand , @processor, @display = brand, processor, display
		@selling_price = mobile_price - @@discount + $tax
		@sample = 90
		# @nil = 10000

	end

	def show()
		puts "Final price of the #{@brand} with #{@processor} processor and #{@display} display just at #{@selling_price}Rs"
    end

    def abc
    	p @@discount.to_s + "discount"
    	# p @brand + "brand"
    	p "sample = #{@sample}"
    	@demo = "kanishk"
     end

    def disp
    	 p "nil executed #{@nil}"
    	 puts "Name = #{@demo}"
    end
end

obj = Mobile.new
obj.features("Samsung", "Exynos", "OLED")
obj.abc
obj.disp
obj.show()
 	
a = Mobile.new
a.features("Samsung", "Exynos", "OLED")
a.abc