require_relative 'encryptor'
require_relative 'key_generator'
require_relative 'date_generator'


read_from = ARGV[0] || "message.txt" 
write_to  = ARGV[1] || "encrypted.txt"

message   = File.open(read_from, "r").read

key       = KeyGenerator::RAND_KEYS
date      = DateGenerator::DATE

if File.exists?(write_to)
  puts "A file by the name of '#{write_to}' already exists. Are you sure you want to overwrite it? yes/no"
  input = $stdin.gets.chomp
    if input == "yes"
      BOOYEY    = Encryptor.encrypt(key, date, message)
      File.open(write_to, "w") { |file| file.write(BOOYEY) }
      
      puts "Created '#{write_to}' with the key #{key} and date #{date}"
    else
      abort("Program canceled.")
    end
else
  File.open(write_to, "w") { |file| file.write(BOOYEY) }

  puts "Created '#{write_to}' with the key #{key} and date #{date}"
end


