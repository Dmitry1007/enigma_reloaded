require 'minitest/autorun'
require 'minitest/pride'
require '../lib/rotator'

class RotatorTest < Minitest::Test
	attr_accessor :rotator

	def setup
		@rotator = Rotator.new
	end

	def test_it_exists
		assert rotator
	end

	def test_it_has_39_characters
		assert_equal 39, rotator.char_map.size
	end

	def test_it_rotates_a_single_space
		assert_equal "a", rotator.char_map[0]
		
	end


end