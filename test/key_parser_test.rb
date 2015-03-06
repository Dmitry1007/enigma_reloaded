require_relative 'test_helper'
require_relative '../lib/keys_parser'

class KeysParserTest < Minitest::Test
	attr_reader :keys_parser

	def setup
		@keys_parser = KeysParser.new
	end

	def test_it_exists
		assert keys_parser
	end

	def test_it_takes_key_and_parses_it_out_into_array
		assert_equal [41, 15, 52, 21], keys_parser.parse("41521")
	end

	def test_it_generates_a_five_digit_string
		assert_equal 5, keys_parser.generate.size
		assert_equal String, keys_parser.generate.class
	end

end
