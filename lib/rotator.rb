

class Rotator
	attr_reader :char_map

	def initialize
		@char_map = ("a".."z").to_a + ("0".."9").to_a + [' ', '.', ',']
	end

	def rotate(letter, rotation, offset)

		letter_index = @char_map.index(letter)
		require 'pry'; binding.pry

		rotated_letter_index = letter_index + (rotation + offset)

		if rotated_letter_index > 39 || rotated_letter_index < -39
		  rotated_letter_index = rotated_letter_index % @char_map.size
		end

		@char_map[rotated_letter_index]

	end
end




# rotator = Rotator.new
# rotator.rotate("a", 2) # => "c"

