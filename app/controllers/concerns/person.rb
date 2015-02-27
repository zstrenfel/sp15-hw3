class Person

	def initialize(name, age)
		@name = name
		@age = age
		@nickname = name[0, 4]
	end

	def introduce()
		"Hello, my name is #{@name}, and I am #{@age} years old."
	end

	def age()
		return @age
	end

	def birth_year()
		@birth_year = 2015 - @age.to_i
	end

	def nickname() 
		@nickname
	end

end
