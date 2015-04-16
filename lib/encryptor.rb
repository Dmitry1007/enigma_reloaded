require_relative 'keys_parser'
require_relative 'offset_parser'
require_relative 'char_map'

class Encryptor
  def self.encrypt(key, date, message) 
    rotations = KeysParser.key_parse(key)
    offsets   = OffsetParser.date_parse(date)

    i = -1
    message.chars.map do |letter| 
      i >= 3 ? i = 0 : i += 1

      letter_index = CharMap::CHAR_MAP.index(letter)
      rot_letter_index = letter_index + (rotations[i] + offsets[i])
      rot_letter_index > 38 ? rot_letter_index = rot_letter_index % 39 : rot_letter_index
      CharMap::CHAR_MAP[rot_letter_index]
    end.join
  end
end