require 'http'

system "clear"

puts
puts "Fortune App ".center(50, " *")
puts "=" * 50
puts

puts "     [1] Random Fortune"
puts "     [2] Lotto Numbers"
puts "     [3] Page Count"
puts 


print "Pick an option:"
user_input = gets.chomp

if user_input == "1"
  response = HTTP.get("http://localhost:3000/api/random_fortune_url")
  fortune_message = response.parse["message"]
  puts "As I look into the crystal ball, I see...  #{fortune_message}"
elsif user_input == "2"
  response = HTTP.get("http://localhost:3000/api/random_number_url")
  lotto_numbers = response.parse["message"]
  puts "Your winning numbers are #{ lotto_numbers.join(", ")}"
elsif user_input == "3"
  response = HTTP.get("http://localhost:3000/api/visits_url")
  page_count = response.parse["count"]
  puts "You have not visited this page #{page_count} times."
end
