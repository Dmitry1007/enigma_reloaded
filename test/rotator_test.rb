require_relative 'test_helper'
require_relative '../lib/rotator'

class RotatorTest < Minitest::Test
  attr_accessor :rotator

  def setup
    @rotator = Rotator.new
  end

  def test_it_rotates_forward_10_spaces
    assert_equal "k", rotator.rotate("a", 9, 1, false) 
    assert_equal "m", rotator.rotate("c", 5, 5, false) 
  end

  def test_it_rotates_forward_less_than_39_spaces
    assert_equal "c", rotator.rotate("a", 1, 1, false) 
    assert_equal "t", rotator.rotate("c", 7, 10, false)
    assert_equal " ", rotator.rotate("d", 30, 3, false) 
  end

  def test_it_rotates_more_than_39_spaces
    assert_equal "b", rotator.rotate("a", 39, 1, false)
    assert_equal "s", rotator.rotate("c", 50, 5, false)
    assert_equal "y", rotator.rotate("n", 41, 9, false)
  end

  def test_it_rotates_in_reverse_7_spaces_when_decrypting
    assert_equal "o", rotator.rotate("v", 6, 1, true) 
    assert_equal " ", rotator.rotate("e", 3, 4, true)
  end

  def test_it_rotates_in_reverse_more_than_39_spaces_when_decrypting
    assert_equal "b", rotator.rotate("v", 50, 9, true) 
    assert_equal "6", rotator.rotate("e", 30, 20, true)
  end

end

