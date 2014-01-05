class Lexicon

	Pair = Struct.new(:token, :word)

	def initialize()
		# create a dictionary containing our lexicon of words
		@@lexi = Hash.new
		%w{north south east west down up left right back}.each do |word|
			@@lexi[word] = :direction
		end
		%w{go stop kill eat}.each do |word|
			@@lexi[word] = :verb
		end
		%w{the in of from at it}.each do |word|
			@@lexi[word] = :stop
		end
		%w{door bear princess cabinet}.each do |word|
			@@lexi[word] = :noun
		end

	end

	def scan(input_string)
		# convert input string into array of words
		wordlist = input_string.split(' ')

		# hold pairs from wordlist in an array
		pairs = Array.new

		# iterate over array and check for existance in lexicon
		wordlist.each do |word|
			if @@lexi.has_key? word
				pairs << create_pair(@@lexi[word], word)
			else
				begin
					num = Integer(word)
					pairs << create_pair(:number, num)
				rescue ArgumentError
					pairs << create_pair(:error, word)
					end
			end
		end

		pairs
	end

	def create_pair(token, word)
		Pair.new(token, word)
	end
end
