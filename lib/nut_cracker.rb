require_relative 'decryptor'

class NutCracker


  def crack(date, encrypted_message)
    decryptor = Decryptor.new(key, date, message)
    key = 9999
    decrypted_message = ""
    while decrypted_message[-7..-1] != "..end.."
      key += 1
      decrypted_message = decryptor.decrypt(key.to_s, date, encrypted_message)
    end
    key.to_s
  end

end


