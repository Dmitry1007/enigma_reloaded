require_relative 'encryptor'
require_relative 'key_generator'
require_relative 'date_generator'


message_filename = ARGV[0] || "message.txt" 
encrypted_message_filename = ARGV[1] || "encrypted.txt"

message = File.open(message_filename, "r").read

key = KeyGenerator::RAND_KEYS
date = DateGenerator::DATE

# ("41521", "020315", "ruby") => 2.ql

BOOYEY = Encryptor.encrypt(key, date, message)

File.open(encrypted_message_filename, "w") { |file| file.write(BOOYEY) }

puts "Created 'encrypted.txt' with the key #{key} and date #{date}"
