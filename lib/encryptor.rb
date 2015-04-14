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

    counter = -1 
    message.chars.map do |letter| 
      counter >= 3 ? counter = 0 : counter += 1
      @rotator.rotate(letter, rotations[counter], offsets[counter], false) 
    end.join
  end

end

