require_relative 'keys_parser'
require_relative 'offset_parser'
require_relative 'rotator'

class Encryptor

  def self.encrypt(key, date, message)
    new(key, date, message).encrypt
  end

  def initialize(key, date, message)
    @rotations = KeysParser.new.key_parse(key) 
    @offsets   = OffsetParser.new.date_parse(date)
    @message   = message  
  end

  def encrypt
    counter = -1 
    @message.chars.map do |letter| 
      counter >= 3 ? counter = 0 : counter += 1
      Rotator.rotate(letter, @rotations[counter], @offsets[counter], false) 
    end.join
  end

end

