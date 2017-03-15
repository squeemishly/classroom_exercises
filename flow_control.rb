require 'byebug'

puts "what's you're favorite food? "
answer = gets.chomp.downcase

if answer.length.even?
    puts "EVEN!"
else
    puts "ODD!"
end

if answer.end_with?("a", "e","i","o","u")
    puts "VOWEL!"
elsif answer.end_with?("y")
    puts "DON'T KNOW!"
else
    puts "CONSONANT!"
end