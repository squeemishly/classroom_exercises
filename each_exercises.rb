numbers = [1,2,3,4,5,6]
numbers_doubled = []

puts "Double the number"
numbers.each do |number|
    puts number * 2
end

puts "Triple the number"
numbers.each do |number|
    puts number * 3
end

puts "Only the even numbers"
numbers.each do |number|
    if number.even?
        puts number
    end
end

puts "new array with each number doubled"
numbers.each do |number|
    numbers_doubled << number * 2
end

p numbers_doubled



first_names = []
both_names = []
puts "print first name only of an array"
names = ["Ilana Corson", "Lauren Fazah", "Beth Sabian"]
names.each do |name|
    both_names << name.split(" ")
end

both_names.each do |name|
    first_names << name[0]
end

puts first_names


