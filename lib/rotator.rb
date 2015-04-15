require_relative 'char_map'

class Rotator

  def self.rotate(letter, rotation, offset, decrypt=true)
    new(letter, rotation, offset, decrypt).rotate
  end

  def initialize(letter, rotation, offset, decrypt=true)
    @letter_index = CharMap::CHAR_MAP.index(letter)
    @rotation     = rotation
    @offset       = offset
    @decrypt      = decrypt
  end

  def rotate
    if @decrypt 
      encrypted_letter_index = @letter_index - (@rotation + @offset)
    else
      encrypted_letter_index = @letter_index + (@rotation + @offset)
    end

    if encrypted_letter_index > 38 || encrypted_letter_index < -38
      encrypted_letter_index = encrypted_letter_index % 39
    end
  
    CharMap::CHAR_MAP[encrypted_letter_index]
  end

end



