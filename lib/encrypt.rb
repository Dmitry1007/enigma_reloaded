require_relative 'encryptor'

message_filename = ARGV[0] || "message.txt" 
encrypted_message_filename = ARGV[1] || "encrypted.txt"

message = File.open(message_filename, "r").read

encrypted_message = Encryptor.new("41521","020315",message).encrypt

File.open(encrypted_message_filename, "w") { |file| file.write(encrypted_message) }