print "how old are you? "
age = gets.chomp.to_i

def happy_birthday(how_many)
    print "Happy "
    (how_many - 1).times do
        print "happy "
    end
    print "birthday to you!"   
end

puts happy_birthday(age)