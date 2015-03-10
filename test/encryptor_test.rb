require_relative 'test_helper'
require_relative '../lib/encryptor'


class EncryptorTest < Minitest::Test
  attr_accessor :encryptor

  def setup
    @encryptor = Encryptor.new  
  end
  
  def test_it_generates_a_five_digit_string
    assert_equal 5, encryptor.key_generator.size
    assert_equal String, encryptor.key_generator.class
  end

  def test_it_encrypts_1_character
    assert_equal "2", encryptor.encrypt("41521", "020315", "r")  
  end

  def test_it_encrypts_4_character
    assert_equal "2.ql", encryptor.encrypt("41521", "020315", "ruby") 
  end

  def test_it_encrypts_ANY_amount_of_characters   
    assert_equal "2.ql2.ql2.ql", encryptor.encrypt("41521", "020315", "rubyrubyruby") 
  end

end
