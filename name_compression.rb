print "gimme a word please "
word = gets.chomp

puts word[0] + (word.length-2).to_s + word[-1]