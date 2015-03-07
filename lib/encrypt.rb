require_relative 'encryptor'

message_filename = ARGV[0] || "message.txt" 
encrypted_message_filename = ARGV[1] || "encrypted.txt"

message = File.open(message_filename, "r").read

encrypted_message = Encryptor.new  
BOOYEY = encrypted_message.encrypt("41521","020315", message)

File.open(encrypted_message_filename, "w") { |file| file.write(BOOYEY) }

puts "Created 'encrypted.txt' with the key '41521' and date 020315"