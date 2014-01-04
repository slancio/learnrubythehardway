# class Animal is-a Object
class Animal
	def initialize()
	end

	attr_accessor :sound
end

# class Dog is-a Animal
class Dog < Animal

	def initialize(name)
		# Dog has-a name
		@name = name
		@sound = "WOOF!"
	end
end

# class Cat is-a Animal
class Cat < Animal

	def initialize(name)
		# Cat has-a name
		@name = name
		@sound = "MEOW!"
	end
end

# class Fox is-a Animal
class Fox < Animal

	def initialize(name)
		# Fox has-a name
		@name = name
	end
end

# class Person is-a Object
class Person

	def initialize(name)
		# Person has a name
		@name = name

		# Person has-a pet
		@pet = nil
	end

	attr_accessor :pet
end

# class Employee is-a Person
class Employee < Person

	def initialize(name, salary)
		# Employee has Person's name
		super(name)
		# Employee has-a salary
		@salary = salary
	end
end

# class Fish is-a Object
class Fish
end

# class Salmon is-a Fish
class Salmon < Fish
end

# class Halibut is-a Fish
class Halibut < Fish
end

# rover is-an instance of class Dog
rover = Dog.new("Rover")
puts rover.sound

# satan is-an instance of class Cat
satan = Cat.new("Satan")
puts satan.sound

# chiral is-an instance of class Fox
chiral = Fox.new("Chiral")
puts chiral.sound

# mary is-an instance of class Person
mary = Person.new("Mary")

# mary has-a pet named satan
mary.pet = satan

# frank is-an Employee
frank = Employee.new("Frank", 120000)

# frank has-a pet named rover
frank.pet = rover

# flipper is-an instance of class Fish
flipper = Fish.new()

# crouse is-an instance of class Salmon
crouse = Salmon.new()

# harry is-an instance of class Halibut
harry = Halibut.new()

