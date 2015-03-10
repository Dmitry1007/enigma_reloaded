require_relative 'decryptor'



message_filename = ARGV[0] || "encrypted.txt" 
decrypted_message_filename = ARGV[1] || "decrypted.txt"
decrypt_key = ARGV[2]
decrypt_date = ARGV[3]

message = File.open(message_filename, "r").read

decrypted_message = Decryptor.new  
BOOYEAY = decrypted_message.decrypt(decrypt_key, decrypt_date, message)

File.open(decrypted_message_filename, "w") { |file| file.write(BOOYEAY) }

puts "Created 'decrypted.txt' with the key #{decrypt_key} and date #{decrypt_date}"

