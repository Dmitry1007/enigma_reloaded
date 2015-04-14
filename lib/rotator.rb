require_relative 'char_map'

class Rotator

  
  def rotate(letter, rotation, offset, decrypt=true)
    
    letter_index = CharMap::CHAR_MAP.index(letter)

    if decrypt == true
      rotated_letter_index = letter_index - (rotation + offset)
    else
      rotated_letter_index = letter_index + (rotation + offset)
    end

    if rotated_letter_index > 38 || rotated_letter_index < -38
      rotated_letter_index = rotated_letter_index % CharMap::CHAR_MAP.size
    end
  
    CharMap::CHAR_MAP[rotated_letter_index]
  end

end



