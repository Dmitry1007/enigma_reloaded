
class Rotator
	attr_reader :char_map

	def initialize
		@char_map = ("a".."z").to_a + (0..9).to_a + [' ', '.', ',']
	end

	def rotate(character, key, offset)
		# Find character in the char_map
		
		# Move forward the key number of times

		# Then move forward the offset number of times
		# Return that letter
	end


end




# rotator = Rotator.new
# rotator.rotate("a", 2) # => "c"

