require_relative 'keys_parser'
require_relative 'offset_parser'
require_relative 'rotator'

class Encryptor

  def initialize
    @key_parser    = KeysParser.new 
    @offset_parser = OffsetParser.new
    @rotator       = Rotator.new  
  end

  def encrypt(key, date, message)
    rotations = @key_parser.key_parse(key)
    offsets   = @offset_parser.date_parse(date)

    encrypted_chars = []
    counter = 0 

    message.each_char do |letter| 
      encrypted_chars << @rotator.rotate(letter, rotations[counter], offsets[counter], false)
      counter += 1
      counter  = 0 if counter == 4 
    end
    encrypted_chars.join    
  end

end

