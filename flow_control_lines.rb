5.times do |i|
    if i.even? 
        puts "line is even!"
    else
        puts "line is odd!"
    end
end


5.times do |i|
    puts "This is my output line #{i+1}"
end


i = 1
while i <= 5
    puts "This is my output line #{i}"
    i += 1
end


n = 1
until n == 6
    puts "This is my output line #{n}"
    n += 1
end