class Lexicon

	Pair = Struct.new(:token, :word)

	def initialize()
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
		wordlist = input_string.split(' ')
		pairs = Array.new
		wordlist.each do |word|
			if @@lexi.has_key? word.downcase
				pairs << Pair.new(@@lexi[word], word)
			else
				begin
					pairs << Pair.new(:number, Integer(word))
				rescue ArgumentError
					pairs << Pair.new(:error, word)
					end
			end
		end
		pairs
	end
end
