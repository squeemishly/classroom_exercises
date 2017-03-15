secret_number = rand(10)
guess = rand(10)

puts "(The secret number is #{secret_number})"

puts "Guess is #{guess}"

until guess == secret_number
    puts "Guess again!"
    guess = rand(10)
    puts "Guess is #{guess}"
end 
