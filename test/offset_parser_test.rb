require_relative 'test_helper'
require_relative '../lib/offset_parser'

class KeyParserTest < Minitest::Test
	attr_accessor :offset_parser

	def setup
		@offset_parser = OffsetParser.new
	end

	def test_it_exists
		assert offset_parser
	end

	def test_it_takes_date_and_squares_it_and_picks_last_4_digits
		assert_equal [9, 2, 2, 5], offset_parser.offset("020315")
		assert_equal [0, 9, 9, 6], offset_parser.offset("121114")
	end

end