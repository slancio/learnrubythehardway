require 'test/unit'
require_relative '../lib/sentence'
require_relative '../lib/lexicon'

class ParserTests < Test::Unit::TestCase

		Pair = Lexicon::Pair
		@@lexicon = Lexicon.new()

		@@verb_stop_noun = [Pair.new(:verb, 'eat'),
								 				Pair.new(:stop, 'the'),
								 				Pair.new(:noun, 'bear')]

		@@stop_verb = [Pair.new(:stop, 'the'), Pair.new(:verb, 'eat')]

		@@noun_verb = [Pair.new(:noun, 'bear'), Pair.new(:verb, 'eat')]

		@@direction_verb = [Pair.new(:direction, 'north'), Pair.new(:verb, 'eat')]

		@@stop_noun = [Pair.new(:stop, 'the'), Pair.new(:noun, 'bear')]

		@@stop_direction = [Pair.new(:stop, 'the'), Pair.new(:direction, 'north')]

		@@subj = Pair.new(:noun, 'bear')
		@@verb_obj = [Pair.new(:verb, 'eat'),
									Pair.new(:noun, 'princess')]

		@@s_v_o = [Pair.new(:noun, 'bear'),
							Pair.new(:verb, 'eat'),
							Pair.new(:noun, 'princess')]

		def test_parse_verb()
			assert_equal(Parser.parse_verb(@@verb_stop_noun), Pair.new(:verb, 'eat'))
			assert_equal(Parser.parse_verb(@@stop_verb), Pair.new(:verb, 'eat'))
			assert_raises(ParserError) { Parser.parse_verb(Pair.new(:stop, 'the')) }
			assert_raises(ParserError) { Parser.parse_verb(Pair.new(:noun, 'bear')) }
			assert_raises(ParserError) { Parser.parse_verb(Pair.new(:direction, 'north')) }
		end

		def test_parse_object()
			assert_equal(Parser.parse_object(@@noun_verb), Pair.new(:noun, 'bear'))
			assert_equal(Parser.parse_object(@@direction_verb), Pair.new(:direction, 'north'))
			assert_equal(Parser.parse_object(@@stop_noun), Pair.new(:noun, 'bear'))
			assert_equal(Parser.parse_object(@@stop_direction), Pair.new(:direction, 'north'))
			assert_raises(ParserError) { Parser.parse_object(Pair.new(:stop, 'the')) }		
			assert_raises(ParserError) { Parser.parse_object(Pair.new(:verb, 'eat')) }
		end

		def test_parse_subject()
			result = Parser.parse_subject(@@verb_obj, @@subj).to_s
			comparator = Sentence.new(Pair.new(:noun, 'bear'),
																Pair.new(:verb, 'eat'),
																Pair.new(:noun, 'princess')).to_s
			assert_equal(result.split(' ').drop(1), comparator.split(' ').drop(1)) 
		end

		def test_parse_sentence()
#
			result = Parser.parse_sentence(@@verb_obj).to_s.split(' ').drop(1)
#
			comparator = Sentence.new(Pair.new(:noun, 'player'),
																Pair.new(:verb, 'eat'),
																Pair.new(:noun, 'princess')).to_s.split(' ').drop(1)

# this fails because of the parse_sentence stored in result.  

			assert_equal(result,comparator)  

# ParserError: Expected verb next. 
# I can't figure it the hell out.

			assert_raises(ParserError) { Parser.parse_sentence(Pair.new(:stop, 'the')) }
			assert_raises(ParserError) { Parser.parse_sentence(Pair.new(:direction, 'north')) }
		end
end
