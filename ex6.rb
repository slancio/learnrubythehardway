# Defines a variable x containing a string.  #{10} in the string evaluates to the number 10.
# Extra Credit 2: Here >
x = "There are #{10} types of people."

# Defines a variable binary containing string "binary"
binary = "binary"

# Defines a variable do_not containing string "don't"
do_not = "don't"

# Defines a variable y containing a string which also evaluates the variables binary and do_not.  Joins 3 separate strings
# Extra Credit 2: Here, twice >
y = "Those who know #{binary} and those who #{do_not}."

# prints x
puts x
#prints y
puts y

# prints a string containing the string variable x
# Extra Credit 2: Here >
puts "I said: #{x}"
# prints a string containing the string variable y
# Extra Credit 2: Here >
puts "I also said: '#{y}.'"

# defines variable hilarious containing boolean false
hilarious = false

# defines variable joke_evaluation as a string containing variable hilarious converted to a string
# Extra Credit 2: Here >
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

# prints joke_evaluation
puts joke_evaluation

# defines a variable w containing a string
w = "This is the left side off..."

# defines a variable e containing a string
e = "a string with a right side."

# prints a concatenation of strings in variables w and e
# Extra Credit 4: Strings can be added together to make longer strings.  Concatenation.
puts w + e
