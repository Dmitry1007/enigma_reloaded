require_relative 'char_map'

class Rotator
  attr_reader :encrypted_letter_index, :letter_index

  def self.rotate(letter, rotation, offset, decrypt=true)
    new(letter, rotation, offset, decrypt).rotate
  end

  def initialize(letter, rotation, offset, decrypt=true)
    @letter_index = CharMap::CHAR_MAP.index(letter)
    @encrypted_letter_index = calculate_index(rotation, offset, decrypt)
  end

  def rotate
    if index_out_of_bounds?
      return_char(encrypted_letter_index % 39)
    else
      return_char(encrypted_letter_index)
    end
  end

  def return_char(index)
   CharMap::CHAR_MAP[index] 
  end

  def calculate_index(rotation, offset, decrypt)
    if decrypt 
      letter_index - (rotation + offset)
    else
      letter_index + (rotation + offset)
    end  
  end

  def index_out_of_bounds?
    encrypted_letter_index > 38 || encrypted_letter_index < -38
  end

end



