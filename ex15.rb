filename = ARGV.first

prompt = "> "

puts "Here's your file: #{filename}"
File.open(filename) do |txt|
  puts txt.read()
end

puts "I'll also ask you to type it again:"
print prompt
file_again = STDIN.gets.chomp()
File.open(file_again) do |txt_again|
  puts txt_again.read()
end
