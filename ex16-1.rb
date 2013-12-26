filename = ARGV.first

puts "We're going to open #{filename}."
puts "Opening the file..."

File.open(filename) do |txt|
  puts txt.read()
end
