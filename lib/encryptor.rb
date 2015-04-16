require_relative 'keys_parser'
require_relative 'offset_parser'
require_relative 'rotator'

class Encryptor

  def self.encrypt(key, date, message)
    rotations = KeysParser.key_parse(key) 
    offsets   = OffsetParser.date_parse(date)

    i = -1 
    message.chars.map do |letter| 
      i >= 3 ? i = 0 : i += 1
      Rotator.rotate(letter, rotations[i], offsets[i], false) 
    end.join
  end

end

