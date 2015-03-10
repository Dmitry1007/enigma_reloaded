require_relative 'decryptor'



message_filename = ARGV[0] || "encrypted.txt" 
decrypted_message_filename = ARGV[1] || "decrypted.txt"

message = File.open(message_filename, "r").read

decrypted_message = Decryptor.new  
BOOYEAY = decrypted_message.decrypt("41521","101215", message)

File.open(decrypted_message_filename, "w") { |file| file.write(BOOYEAY) }

puts "Created 'decrypted.txt' with the key 41521 and date 010111"

