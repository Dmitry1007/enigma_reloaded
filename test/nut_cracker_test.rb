require_relative 'test_helper'
require_relative '../lib/nut_cracker'


class NutCrackerTest < Minitest::Test
  attr_reader :nut_cracker

  def setup
    @nut_cracker = NutCracker.new
  end

  def test_splits_last_7_characters_from_string
    assert_equal "..end..", nut_cracker.strip("afgikd igf d , ihag, uhv ..end..")
  end

  def test_we_can_find_the_rotation_of_the_last_character_in_the_message
    assert_equal "a", nut_cracker.assign_rotation("hfyruf i fufu")
    assert_equal "b", nut_cracker.assign_rotation("hfyruf i f")
    assert_equal "c", nut_cracker.assign_rotation("hfyruf i fu")
    assert_equal "d", nut_cracker.assign_rotation("hfyruf i fuh")
  end

   # def test_takes_message_and_parses
  #   hash = {:a => '8', :b => 'g', :c => 'd', :d => 'h'}
  #   assert_equal hash, nut_cracker.parse("8gdh") 
  # end

  # def test_it_knows_the_starting_and_ending_rotation
  #   assert_equal "4", nut_cracker.starting_rot("480 lmrzqml") 
  # end
  
  # def test_it_returns_period_for_v_character
  #   secret_char = "."
  #   offset_a = "2"
  #   assert_equal "18", nut_cracker.crack(secret_char,offset_a)
  # end

end