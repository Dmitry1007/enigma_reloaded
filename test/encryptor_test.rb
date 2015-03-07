require_relative 'test_helper'
require_relative '../lib/encryptor'


class EncryptorTest < Minitest::Test

	def test_it_generates_a_five_digit_string
		encryptor = Encryptor.new
		assert_equal 5, encryptor.generate.size
		assert_equal String, encryptor.generate.class
	end

	def test_it_encrypts_1_character
		encryptor = Encryptor.new
		assert_equal "2", encryptor.encrypt("41521", "020315", "r")  
	end

	def test_it_encrypts_4_character
		encryptor = Encryptor.new
		assert_equal "2.ql", encryptor.encrypt("41521", "020315", "ruby") 
	end

	def test_it_encrypts_ANY_amount_of_characters		
		encryptor = Encryptor.new
		assert_equal "2.ql2.ql2.ql", encryptor.encrypt("41521", "020315", "rubyrubyruby") 
	end

end
