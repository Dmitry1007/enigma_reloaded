require_relative 'nut_cracker'


read_from    = ARGV[0] || "encrypted.txt" 
write_to     = ARGV[1] || "cracked.txt"
decrypt_date = ARGV[2]

message = File.open(read_from, "r").read


if File.exists?(write_to)
  puts "A file by the name of '#{write_to}' already exists. Are you sure you want to overwrite it? yes/no"
  input = $stdin.gets.chomp
    if input == "yes"
      BOOYEY = NutCracker.crack(decrypt_date, message)
      File.open(write_to, "w") { |file| file.write(BOOYEY) }
      
      puts "Created 'cracked.txt' with the cracked key #{File.readlines(write_to, "r").first} and date #{decrypt_date}"
    else
      abort("Program canceled.")
    end
else
  File.open(write_to, "w") { |file| file.write(BOOYEY) }

  puts "Created 'cracked.txt' with the cracked key #{File.readlines(write_to, "r").first} and date #{decrypt_date}"
end