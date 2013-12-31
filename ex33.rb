i = 0
numbers = []

count_to = (0..5).to_a

for i in count_to
	puts "At the top i is #{i}"
	numbers.push(i)

	puts "Numbers now: #{numbers}"
	puts "At the bottom i is #{i}"
end

puts "The numbers: "

for num in numbers
	puts num
end
