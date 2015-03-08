


class Rotator
  attr_reader :char_map

  def initialize
    @char_map = [*("a".."z"), *("0".."9"), ' ', '.', ',']
  end

  def rotate(letter, rotation, offset, reverse_rotate=true)
    letter_index = @char_map.index(letter)

    if reverse_rotate == true
      rotated_letter_index = letter_index - (rotation + offset)
    else
      rotated_letter_index = letter_index + (rotation + offset)
    end

    if rotated_letter_index > 38 || rotated_letter_index < -38
      rotated_letter_index = rotated_letter_index % @char_map.size
    end
  
    @char_map[rotated_letter_index]
  end
end



