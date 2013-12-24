# Extra credit question 1: The name error comes up because the variable was defined as carpool_capacity but mistakenly called as car_pool_capacity
#                          The error is stating that there is no defined object named 'car_pool_capacity'

# defines the variable cars.  Value 100 represents the quantity of cars.
cars = 100

# Extra credit question 2: If 4 is used instead of 4.0, average_passengers_per_car will still be correctly be 25, but if the values were different it would be 
#                          necessary.  If you're planning on using a number for division it's probably best to define it as a float.

# defines the variable space_in_a_car.  Value 4.0 represents the number of passengers that can fit in a car.
space_in_a_car = 4.0

# defines the variable drivers.  Value 30 represents how many people are driving their car.
drivers = 30

# defines the variable passengers.  Value 90 represents how many passengers will be riding in cars.
passengers = 90

# defines the variable cars_not_driven.  Value is represented as number of cars - number of drivers.
cars_not_driven = cars - drivers

# defines the variable cars_driven.  Value is represented as the number of drivers
cars_driven = drivers

# defines the variable carpool_capacity.  Value is calculated by cars_driven * space_in_a_car.
carpool_capacity = cars_driven * space_in_a_car

# defines the variable average_passengers_per_car.  Value is calculated by passengers / cars_driven.
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

