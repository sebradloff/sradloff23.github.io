class CoffeeMaker
	
	def initialize(name)
		@name = name
		@beans = 100
		@water = 100
	end

	def check_water_level
		return "Your #{@name} coffee maker has #{@water}% water remaining."
	end

	def check_beans_level
		return "Your #{@name} coffee maker has #{@beans}% beans remaining."
	end

	def black
		if (@water < 20) || (@beans < 30) then return "Can't make that drink:" + " " + check_water_level + " " + check_beans_level
		else		
			@water -= 20
			@beans -= 20
			return "Here is your hot black coffee!"
		end
	end
	
	def espresso
		if (@water < 30) || (@beans < 20) then return "Can't make that drink:" + " " + check_water_level + " " + check_beans_level
		else
			@water -= 10
			@beans -= 30
			return "Here is your delicious espresso!"
		end
	end


	def add_beans
		@beans = 100
	end

	def add_water
		@water = 100
	end

end

new_coffee_maker = CoffeeMaker.new("illy")

p new_coffee_maker.check_beans_level
p new_coffee_maker.check_water_level

p new_coffee_maker.espresso
p new_coffee_maker.check_water_level
p new_coffee_maker.check_beans_level

p new_coffee_maker.black
p new_coffee_maker.espresso
p new_coffee_maker.black
p new_coffee_maker.add_water

p new_coffee_maker.check_water_level
p new_coffee_maker.check_beans_level