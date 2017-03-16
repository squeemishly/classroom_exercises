require 'pry'

def hello(first_name, last_name = nil)
    puts "Hello there, #{first_name} #{last_name}!"
end

hello("squee", "leigh")

def mathing
    puts 3
end

puts mathing    