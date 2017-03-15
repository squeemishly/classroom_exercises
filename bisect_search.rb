require 'byebug'

values = (1..10000).to_a#.sample(5000).sort
t = 5000
m = values.length/2

puts values[m] #finds the value right in the middle

if values[m] == t
    puts "target has been acquired"
else
    until values[m] == t
        byebug
        if values.length == 0
            puts "your value does not exist in this array"
            break
        elsif values[m] < t
            values.slice!(0..m)
            m = values.length/2
        elsif values[m] > t
            values.slice!(m..-1)
            m = values.length/2
        else
            puts "#{t} was in this set!"
        end

    end
    
end