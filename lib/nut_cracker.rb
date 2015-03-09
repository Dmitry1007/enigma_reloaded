
class NutCracker

  def initialize
    @rotations = ["a","b","c","d"]
    @char_map = [*("a".."z"), *("0".."9"), ' ', '.', ',']
    @starting_index = 37
  end

  def crack(secret_char,offset)
    rotation_a = ((@starting_index - offset.to_i) - @char_map.index(secret_char)).to_s
  end

  def starting_rot(message)
    @rotations[(message.length - 7) % 4]
  end

# split last 7 letters from original message
# find length of original message and % by 4


end









