require_relative 'char_map'

class Rotator

  def self.rotate(letter, rotation, offset, decrypt=true)
    new(letter, rotation, offset, decrypt).rotate
  end

  def initialize(letter, rotation, offset, decrypt=true)
    @letter_index = CharMap::CHAR_MAP.index(letter)
    @decrypt      = decrypt
    @rotation     = rotation
    @offset       = offset
  end

  def rotate
    if @decrypt 
      rotated_letter_index = @letter_index - (@rotation + @offset)
    else
      rotated_letter_index = @letter_index + (@rotation + @offset)
    end

    if rotated_letter_index > 38 || rotated_letter_index < -38
      rotated_letter_index = rotated_letter_index % CharMap::CHAR_MAP.size
    end
  
    CharMap::CHAR_MAP[rotated_letter_index]
  end

end



