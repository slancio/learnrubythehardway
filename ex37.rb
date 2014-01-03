def drawline()
	puts "-" * 50
end

class AliasTesting
	def alias_test()
		puts "#{__method__} - Original."
	end
end

test = AliasTesting.new
test.alias_test

class AliasTesting
	alias :old_test :alias_test
	
	def alias_test()
		puts "#{__method__} - New"
		old_test
	end
end

test.alias_test

drawline

begin
	chain = (21 / 3)
	puts "21 / 3: #{chain}"
	chain = (21 / 3 and true)
	puts "21 / 3 and true: #{chain}"
	chain = (21 / 3 and true and 21 / 7)
	puts "21 / 3 and true and 21 / 7: #{chain}"
	chain = (21 / 3 and true and 21 / 7 and false)
	puts "21 / 3 and true and 21 / 7 and false: #{chain}"
	chain = (21 / 3 and true and 21 / 7 and false and true)
	puts "21 / 3 and true and 21 / 7 and false and true: #{chain}"
	chain = (21 / 3 and nil and true)
	puts "21 / 3 and nil and true: #{chain}"
end

drawline

puts "(1..5).begin: #{(1..5).begin}"

drawline

puts "Break at 5 when counting to 10"
(1..10).each do |num|
	if num == 5
		break
	else
		puts num
	end
end

drawline 

puts "print 'YES!' if animal is a bear."

def isBear?(animal)
	case
	when animal == "crow"
		print "#{animal} is bear? No, iz Crow!\n"
	when animal == "emu"
		print "#{animal} is bear? Smells like emu. No!\n"
	when animal == "bear"
		print "#{animal} is bear? YES!\n"
	else
		print "#{animal} is bear? NO!\n"
	end
end

animals = ["penguin", "panda", "cat", "emu", "dolphin", "crow", "bear"]
animals.each do |animal|
	isBear? animal
end

drawline

class Chip
	attr_accessor :name
	
	def initialize()
		@name = "Nameless"
	end

	def tasteless()
		@name = "Doesn't Exist"
	end

	def printer()
		puts "NOPE"
	end
end

class Potato < Chip
	def initialize()
		@name = "Salt & Vinegar"
		puts self.name
	end
end

class Tortilla < Chip
	def initialize()
		@name = "Blue Corn"
		puts self.name
	end
end

class Fiction < Chip
	def initialize()
		@name = "Magic"
		puts self.name
	end

	def tasteless()
		super
	end

	def printer_defined?()
		undef printer
		puts "#{defined? printer}"
	end
end

tasty = Potato.new
puts tasty.name
tastier = Tortilla.new
puts tastier.name
no_taste = Fiction.new
no_taste.tasteless
puts no_taste.name
no_taste.printer_defined?

drawline

begin
	puts "Definition of:"
	puts "\t42\t\t#{defined? 42}"
	puts "\tClass\t\t#{defined? Class}"
	puts "\taskdhfwa\t\t#{defined? askdhfwa}"
	puts "\tObject\t\t#{defined? Object}"
	puts "\t[].shift\t#{defined? [].shift}"
end

drawline

begin
	puts "no problem"
rescue
	puts "some exception occurred"
	retry if 1 == 1
ensure
	puts "prints this anyway"
end

drawline

for i in (1..10)
	print "#{i} "
end
puts

drawline

module Cheesing
	def dude()
		puts "Dude I'm cheesing my f-ing brains out."
	end
end

class Drugs
	include Cheesing
end

use_me = Drugs.new
use_me.dude()

drawline

puts "Print odd numbers in 1-10."
(1..10).each do |num|
	if num % 2 == 0
		next
	else
		puts num
	end
end

drawline

puts "#{not true}"

drawline

puts "NO!" if false or false
drawline() if false or true

(1..3).each do
	puts "Please type 'BEAVIS' when prompted:"
	redo unless gets.chomp == "BEAVIS"
end

drawline

if 1 == 1 then drawline end

test = 0
while test < 1 do
	puts "Not yet..."
	test = 1
end

drawline

def yielder()
	yield
end

yielder { puts 'yielding...' }

drawline

(1..10).each do |num|
	print "#{num} "
end
puts
(1...10).each do |num|
	print "#{num} "
end
puts
