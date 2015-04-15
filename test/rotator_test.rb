require_relative 'test_helper'
require_relative '../lib/rotator'

class RotatorTest < Minitest::Test

  # def test_it_rotates_forward_10_spaces
  #   assert_equal "k", Rotator.rotate("a", 9, 1, false) 
  #   assert_equal "m", Rotator.rotate("c", 5, 5, false) 
  # end

  # def test_it_rotates_forward_less_than_39_spaces
  #   assert_equal "c", Rotator.rotate("a", 1, 1, false) 
  #   assert_equal "t", Rotator.rotate("c", 7, 10, false)
  #   assert_equal " ", Rotator.rotate("d", 30, 3, false) 
  # end

  def test_it_rotates_more_than_39_spaces
    assert_equal "b", Rotator.rotate("a", 39, 1, false)
    assert_equal "s", Rotator.rotate("c", 50, 5, false)
    assert_equal "y", Rotator.rotate("n", 41, 9, false)
  end

  # def test_it_rotates_in_reverse_7_spaces_when_decrypting
  #   assert_equal "o", Rotator.rotate("v", 6, 1, true) 
  #   assert_equal " ", Rotator.rotate("e", 3, 4, true)
  # end

  def test_it_rotates_in_reverse_more_than_39_spaces_when_decrypting
    assert_equal "f", Rotator.rotate("v", 14, 2, true) 
    assert_equal "6", Rotator.rotate("e", 30, 20, true)
  end

end

