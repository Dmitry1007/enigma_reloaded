require 'minitest/autorun'
require 'minitest/pride'
require '../lib/key_parser'

class KeyParserTest < Minitest::Test
	attr_accessor :key_parser

	def setup
		@key_parser = KeyParser.new
	end

	def test_it_exists
		assert key_parser
	end

	def test_it_takes_key_and_parses_it_out_into_array
		assert_equal [41, 15, 52, 21], key_parser.parse("41521")
	end

	def test_it_generates_a_five_digit_string
		assert_equal 5, key_parser.generate.size
		assert_equal String, key_parser.generate.class
	end


end
