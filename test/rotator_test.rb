require_relative 'test_helper'
require_relative '../lib/rotator'

class RotatorTest < Minitest::Test
	attr_accessor :rotator

	def setup
		@rotator = Rotator.new
	end

	def test_it_has_39_characters
		assert_equal 39, rotator.char_map.size
	end

	def test_it_rotates_less_than_39_spaces
		assert_equal "c", rotator.rotate("a", 1, 1, false) 
		assert_equal "t", rotator.rotate("c", 7, 10, false)
		assert_equal " ", rotator.rotate("d", 30, 3, false) 
	end

	def test_it_rotates_more_than_39_spaces
		assert_equal "b", rotator.rotate("a", 39, 1, false)
		assert_equal "s", rotator.rotate("c", 50, 5, false)
	end

	def test_it_rotates_in_reverse_when_negative_number_is_passed
		assert_equal ".", rotator.rotate("c", 3, 1, true) 
		assert_equal "6", rotator.rotate("e", 30, 20, true)
	end

end

