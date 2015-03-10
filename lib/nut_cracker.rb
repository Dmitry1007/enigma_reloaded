require_relative 'decryptor'



class NutCracker

  def initialize
    @rotations = ["a","b","c","d"]
    @char_map = [*("a".."z"), *("0".."9"), ' ', '.', ',']
    @starting_index = 37
  end

  def parse(message)
    message.each_char { |char| }
  end 

  def strip(message)
    message[-7..-1]
  end

  def assign_rotation(message)
    case message.length % 4 
      when 0
      "d"
      when 1
        "a"
      when 2
        "b"
      when 3
        "c"
    end        
  end

end


# find the a,b,c,d positions of the message
# chop off the last 7 characters
# assign last 7 characters to a postition
# subtract the offset from each position
# find the difference between new_character and decrypted character
# that difference is the key(a,b,c,d)
# save the key

  

  # def crack(secret_char,offset)
  #   rotation_a = ((@starting_index - offset.to_i) - @char_map.index(secret_char)).to_s
  # end

  # def starting_rot(message)
  #   @rotations[(message.length - 7) % 4]
  # end





