require_relative 'decryptor'

message_filename = ARGV[0] || "encrypted.txt" 
decrypted_message_filename = ARGV[1] || "decrypted.txt"

message = File.open(message_filename, "r").read

decrypted_message = Decryptor.new  
BOOYEY = decrypted_message.decrypt("41521","020315", message)

File.open(decrypted_message_filename, "w") { |file| file.write(BOOYEY) }

puts "Created 'decrypted.txt' with the key ..... and date ....."