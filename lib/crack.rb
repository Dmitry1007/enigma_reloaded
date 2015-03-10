require_relative 'nut_cracker'



message_filename = ARGV[0] || "encrypted.txt" 
decrypted_message_filename = ARGV[1] || "cracked.txt"
decrypt_date = ARGV[2]

message = File.open(message_filename, "r").read

nut_cracker = NutCracker.new  
BOOYEAYY = nut_cracker.crack(decrypt_date, message)

File.open(decrypted_message_filename, "w") { |file| file.write(BOOYEAYY) }

puts "Created 'cracked.txt' with the cracked key #{File.readlines(decrypted_message_filename, "r")} and date #{decrypt_date}"

