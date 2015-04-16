require_relative 'char_map'

class Rotator

  def self.rotate(letter, rotation, offset, reverse_rotate=true)
    letter_index = CharMap::CHAR_MAP.index(letter)

    if reverse_rotate == true
      rotated_letter_index = letter_index - (rotation + offset)
    else
      rotated_letter_index = letter_index + (rotation + offset)
    end



    if rotated_letter_index > 38 || rotated_letter_index < -38
      rotated_letter_index = rotated_letter_index % 39
    end
  
    CharMap::CHAR_MAP[rotated_letter_index]
  end

end

