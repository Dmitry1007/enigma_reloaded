require_relative 'decryptor'

class NutCracker
  def self.crack(date, encrypted_message)
    key = 1000
    loop do
      decrypted = Decryptor.decrypt(key.to_s, date, encrypted_message)
      break if decrypted[-7..-1] == "..end.."
      key += 1
    end
    key.to_s
  end
end