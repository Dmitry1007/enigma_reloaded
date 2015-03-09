require_relative 'test_helper'
require_relative '../lib/nut_cracker'


class NutCrackerTest < Minitest::Test
  attr_reader :nut_cracker

  def setup
    @nut_cracker = NutCracker.new
  end

  # def test_splits_last_7_characters_from_string
  #   assert_equal "ag, uhv", nut_cracker.crack("afgikd igf d , ihag, uhv")
  # end

  # def test_it_knows_the_starting_rotation
  #   assert_equal "a", nut_cracker.starting_rot("hello this is my string ..end..") 
  # end
  
  def test_it_returns_period_for_v_character
    secret_char = "v"
    offset_a = "2"
    assert_equal "14", nut_cracker.crack(secret_char,offset_a)
  end

end