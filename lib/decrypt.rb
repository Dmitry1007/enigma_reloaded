require_relative 'decryptor'
require_relative 'key_generator'
require_relative 'date_generator'

read_from    = ARGV[0] || "encrypted.txt" 
write_to     = ARGV[1] || "decrypted.txt"
decrypt_key  = ARGV[2]
decrypt_date = ARGV[3]

message      = File.open(read_from, "r").read


if File.exists?(write_to)
  puts "A file by the name of '#{write_to}' already exists. Are you sure you want to overwrite it? yes/no"
  
  input = $stdin.gets.chomp
    if input == "yes"
      BOOYEY    = Decryptor.decrypt(decrypt_key, decrypt_date, message)
      message   = File.open(write_to, "w") { |file| file.write(BOOYEY) }
      
      puts "Created '#{write_to}' with the key #{decrypt_key} and date #{decrypt_date}"
    else
      abort("Program canceled.")
    end

else
  File.open(write_to, "w") { |file| file.write(BOOYEY) }
  
  puts "Created '#{write_to}' with the key #{decrypt_key} and date #{decrypt_date}"
end