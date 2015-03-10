require_relative 'decryptor'

class NutCracker


  def crack(date, encrypted_message)
    decryptor = Decryptor.new
    key = "1000"
    decrypted_message = " "
    while decrypted_message[-7..-1] != "..end.."
      key_converted = key.to_i + 1
      key = key_converted.to_s
      decrypted_message = decryptor.decrypt(key, date, encrypted_message)
    end
    key
  end

end


