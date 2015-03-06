require_relative 'test_helper'
require_relative '../lib/encryptor'



class EncryptorTest < Minitest::Test

	def test_it_encrypts_1_character
		encryptor = Encryptor.new("41521", "020315", "r")
		assert_equal "2", encryptor.encrypt 
	end

	def test_it_encrypts_4_character
		encryptor = Encryptor.new("41521", "020315", "ruby")
		assert_equal "2.ql", encryptor.encrypt 
	end

	def test_it_encrypts_ANY_amount_of_characters		
		encryptor = Encryptor.new("41521", "020315", "rubyrubyruby")
		assert_equal "2.ql2.ql2.ql", encryptor.encrypt 
	end

end
