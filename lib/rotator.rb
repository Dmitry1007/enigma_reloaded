

class Rotator
	attr_reader :char_map

	def initialize
		@char_map = ("a".."z").to_a + ("0".."9").to_a + [' ', '.', ',']
	end

	def rotate(letter, rotation, offset, crypt=false)
		letter_index = @char_map.index(letter)

		if crypt == false
			rotated_letter_index = letter_index - (rotation + offset)
		else
			rotated_letter_index = letter_index + (rotation + offset)
		end

		if rotated_letter_index > 39 || rotated_letter_index < -39
		  rotated_letter_index = rotated_letter_index % @char_map.size
		end

		@char_map[rotated_letter_index]

	end
end



