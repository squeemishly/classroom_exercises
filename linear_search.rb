found = false
marker = 0
x = 20

values = (1..1000).to_a.shuffle

until found == true
    if values[marker] == x
        puts "#{x} is in the #{marker} position"
        found = true
    elsif values[marker] != x
        marker += 1
    elsif values.length > marker
        puts "The value was not found"
        found = true
    end
end