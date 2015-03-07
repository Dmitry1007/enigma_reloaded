require_relative 'test_helper'
require_relative '../lib/decryptor'


class DecryptorTest < Minitest::Test

	def test_it_decrypts_1_character
		decryptor = Decryptor.new
		assert_equal "r", decryptor.decrypt("41521", "020315","2") 
	end

	def test_it_decrypts_4_character
		decryptor = Decryptor.new
		assert_equal "ruby", decryptor.decrypt("41521", "020315","2.ql") 
	end

	def test_it_decrypts_ANY_number_of_characters
		decryptor = Decryptor.new
		assert_equal "rubyruby", decryptor.decrypt("41521", "020315","2.ql2.ql") 
	end
	
end