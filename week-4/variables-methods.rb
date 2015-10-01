puts "What's your first name?"
first_name = gets.chomp

puts "What's your middle name?"
middle_name = gets.chomp

puts "What's your last name?"
last_name = gets.chomp

puts "What's your favorite number?"
new_fav_num = gets.chomp.to_i + 1

puts "#{first_name} #{middle_name} #{last_name} is such a lovely name and #{new_fav_num} is an even better favorite number!"
