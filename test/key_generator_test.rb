require_relative 'test_helper'
require_relative '../lib/key_generator'

class KeyGeneratorTest < Minitest::Test
  
  def test_it_generates_a_five_digit_string
    assert_equal 5, KeyGenerator::RAND_KEYS.size
    assert_equal String, KeyGenerator::RAND_KEYS.class
  end

end