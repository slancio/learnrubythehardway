class Song
	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_a_song()
		for line in @lyrics
			puts line
		end
	end

	def sing_in_reverse()
		reversed = @lyrics.reverse
		@lyrics = reversed
		self.sing_me_a_song()
	end
end

happy_bday = Song.new(["Happy birthday to you",
										"I don't want to get sued",
										"So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around the family",
												"With pockets full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

hhjj = ["Happy, happy, joy, joy!",
				"Happy, happy, joy, joy!",
				"Happy, happy, joy, joy!",
				"Happy, happy, joy, joy!",
				"Happy, happy, joy, joy!",
				"Happy, happy, joy, joy!",
				"Happy, happy, happy, happy, happy, happy, happy, happy, happy, happy, joy, joy, joy!"]

happy_joy = Song.new(hhjj)
happy_joy.sing_me_a_song()
happy_joy.sing_in_reverse()
