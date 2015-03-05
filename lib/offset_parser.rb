
class OffsetParser

	def offset(date)
		squared_date = date.to_i * date.to_i
		
		a = squared_date.to_s[-4].to_i
		b = squared_date.to_s[-3].to_i
		c = squared_date.to_s[-2].to_i
		d = squared_date.to_s[-1].to_i

		offset_parse = [a, b, c, d]
	end

end

# The Offsets

# The date of message transmission is also factored into the encryption
# Consider the date in the formate DDMMYY, like 020315
# Square the numeric form (412699225) and find the last four digits (9225)
# The first digit is the "A offset" (9)
# The second digit is the "B offset" (2)
# The third digit is the "C offset" (2)
# The fourth digit is the "D offset" (5)