require_relative 'decryptor'

class NutCracker


  def crack(date, encrypted_message)
    decryptor = Decryptor.new
    key = "1000"
    decrypted_message = ""
    while decrypted_message[-7..-1] != "..end.."
      key_converted = key.to_i + 1
      key = key_converted.to_s
      decrypted_message = decryptor.decrypt(key, date, encrypted_message)
    end
    key
  end

end

if __FILE__ == $0
cracker = NutCracker.new
puts cracker.crack("101215", "pvax1yxff66brvrgf 3bsouhk1xaooubzv 4zonym4syg")
end

