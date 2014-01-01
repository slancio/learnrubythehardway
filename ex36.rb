def prompt()
	print "(number)# "
end

def dead(why)
	puts "#{why} Good job!"
	Process.exit(0)
end

def living_room()
	puts "You are assaulted by an aroma of cat shit.  Plot your escape:"
	puts "	1. Go upstairs."
	puts "	2. Go to the garage."
	puts "	3. Go to the backyard."

	prompt; your_move = gets.chomp

	if your_move.to_i() == 1
		staircase()
	elsif your_move.to_i() == 2
		garage()
	elsif your_move.to_i() == 3
		backyard()
	else
		dead("You are overpowered by the foul smell and choke to death!")
	end
end

def staircase()
	puts "There's five doors here.  Uh oh!"
	puts "	1. Take the door in front of you."
	puts "	2. Take the first door to the left."
	puts "	3. Take the first door to the right."
	puts "	4. Take the second door to the left."
	puts "	5. Take the second door to the right."

	prompt; your_move = gets.chomp

	if your_move.to_i() == 1
		dead("A bathroom. You really had to shit anyway.")
	elsif your_move.to_i() == 2
		dead("You've intruded on Chuck's room.  He exercises his second amendment rights.")
	elsif your_move.to_i() == 3
		dead("Garrett makes you sit down and play Halo.")
	elsif your_move.to_i() == 4
		puts "Door is locked.  Too bad."
		staircase()
	elsif your_move.to_i() == 5
		dead("You get lost in a maze of garbage, never to find your way out.")
	else
		dead("You trip over a cat, fall down the stairs and break your neck.")
	end
end

def garage()
	puts "You walk into a cloud of marijuana smoke."
	dead("You're so insanely high that you forget who you are.")
end

def backyard()
	puts "There's a pretty awesome fire goin' out here."
	dead("You pull up a chair and chill for a while.")
end

def dont_die_at_mikes_house()
	puts "A crazed lunatic from the Bronx is waving a gun at you."
	puts "The door to the house in front of you is open, it might be your only escape."
	puts "Do you go inside?"

	print "Y/N> "; choice = gets.chomp

	if choice == "Y" || choice == "y"
		puts
		puts "Welcome to..."
		puts "\t...Don't Die At Mike's House"
		print "-_" * 20; print "-"
		puts
		living_room()
	elsif choice == "N" || choice == "n"
		dead("Baxter starts shooting at you but is too drunk to hit anything. Brandon's drunk girlfriend runs you down.  You die.")
	else
		dead("You are overcome by your own stupidity. Your brain pops a clot and you die.")
	end
end

dont_die_at_mikes_house()
