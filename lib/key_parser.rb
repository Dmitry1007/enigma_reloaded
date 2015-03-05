
class KeyParser
	
	def parse(key)
		a = key[0..1].to_i
		b = key[1..2].to_i
		c = key[2..3].to_i
		d = key[3..4].to_i

		key_parse = [a, b, c, d]
	end

	def generate
		numbs = [0,1,2,3,4,5,6,7,8,9]
		numbs.sample(5).join
	end
		
end

# require 'pry'; binding.pry

# The Key

# Each message uses a unique encryption key
# The key is five digits, like 41521
# The first two digits of the key are the "A" rotation (41)
# The second and third digits of the key are the "B" rotation (15)
# The third and fourth digits of the key are the "C" rotation (52)
# The fourth and fifth digits of the key are the "D" rotation (21)
