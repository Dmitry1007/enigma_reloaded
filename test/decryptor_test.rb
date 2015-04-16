require_relative 'test_helper'
require_relative '../lib/decryptor'


class DecryptorTest < Minitest::Test

  def test_it_decrypts_1_character
    assert_equal "r", Decryptor.decrypt("41521", "020315","2")
    assert_equal "c", Decryptor.decrypt("11111", "041415", "p")
    assert_equal "b", Decryptor.decrypt("41521", "020315", "m")
    assert_equal "f", Decryptor.decrypt("11111", "041415", "s")   
  end

  def test_it_decrypts_4_character
    assert_equal "ruby", Decryptor.decrypt("41521", "020315","2.ql")
    assert_equal "abcu", Decryptor.decrypt("11111", "041415", "nop ")
    assert_equal "trab", Decryptor.decrypt("41521", "020315", "48p1")
    assert_equal "cbaa", Decryptor.decrypt("11111", "041415", "ponq")     
  end

  def test_it_decrypts_ANY_number_of_characters
    assert_equal "rubyruby", Decryptor.decrypt("41521", "020315","2.ql2.ql")
    assert_equal "trabtrabtrab", Decryptor.decrypt("41521", "020315", "48p148p148p1") 
    assert_equal "cbaacbaacbaa", Decryptor.decrypt("11111", "041415", "ponqponqponq")  
  end
  
end