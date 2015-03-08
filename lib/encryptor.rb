require_relative 'keys_parser'
require_relative 'offset_parser'
require_relative 'rotator'

class Encryptor

	def date_generator
		t = Time.new
		t.strftime "%m%d%y"
	end

	def key_generator
		@rand_gen_keys = [0,1,2,3,4,5,6,7,8,9].sample(5).join
	end

	def encrypt(key, date, message)
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
			encrypted_chars << rotator.rotate(letter, rotation, offset, false)
			counter += 1
			counter = 0 if counter == 4 
		end
		encrypted_chars.join		
	end
end



# Takes the key and sends the key into keys_parser and gets back the rotation numbers
# Takes the date sends that to offset parser and gets the offset numbers

# Reads the input file
# it creates the output file

# goes through the input text one char at a time or 4 characters at a time
# it asks the rotator to rotate this character with this appropriate key rotation with this appropriate offset

# it writes the response to the output file 

