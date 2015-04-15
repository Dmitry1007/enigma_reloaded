require_relative 'test_helper'
require_relative '../lib/encryptor'


class EncryptorTest < Minitest::Test
  
  def test_it_encrypts_1_character
    assert_equal "2", Encryptor.encrypt("41521", "020315", "r")
    assert_equal "p", Encryptor.encrypt("11111", "041415", "c")
    assert_equal "m", Encryptor.encrypt("41521", "020315", "b")
    assert_equal "s", Encryptor.encrypt("11111", "041415", "f")  
  end

  def test_it_encrypts_4_character
    assert_equal "2.ql", Encryptor.encrypt("41521", "020315", "ruby")
    assert_equal "nop ", Encryptor.encrypt("11111", "041415", "abcu")
    assert_equal "48p1", Encryptor.encrypt("41521", "020315", "trab")
    assert_equal "ponq", Encryptor.encrypt("11111", "041415", "cbaa")    
  end

  def test_it_encrypts_ANY_amount_of_characters   
    assert_equal "2.ql2.ql2.ql", Encryptor.encrypt("41521", "020315", "rubyrubyruby") 
    assert_equal "48p148p148p1", Encryptor.encrypt("41521", "020315", "trabtrabtrab") 
    assert_equal "ponqponqponq", Encryptor.encrypt("11111", "041415", "cbaacbaacbaa") 
  end

end
