require_relative 'keys_parser'
require_relative 'offset_parser'
require_relative 'rotator'

class Decryptor

	def decrypt(key, date, message)
		keys_parser = KeysParser.new 
		rotation_numbs = keys_parser.key_parse(key)

		offset_parser = OffsetParser.new
		offset_numbs = offset_parser.date_parse(date)

		rotator = Rotator.new

		encrypted_chars = []
		counter = 0 

		message.each_char do |letter|
			rotation = rotation_numbs[counter] 
			offset = offset_numbs[counter]
			encrypted_chars << rotator.rotate(letter, rotation, offset)
			counter += 1
			counter = 0 if counter == 4 
		end
		encrypted_chars.join	
	end
end 