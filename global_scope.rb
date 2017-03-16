# #x = 10
# #puts "x is #{x}"
# x = 20
# #puts "x is #{x}"

# def print_doubled_value(x)
#   orig = x
#   x = x * 2
#   puts "double the value of #{orig} is #{x}"
#   puts "inner x is now #{x}"
# end

# print_doubled_value(x)
# puts "outer x is still #{x}"

# y = 27
# print_doubled_value(y)

#######
# x = 20
# a = 4
# b = 12
# def combine_variables(x)
#   puts "inner x is #{x}"
#   puts "and outer b is #{b}"
# end

# def b
#   12
# end

# combine_variables(a)



########
# [1,2,3].each do |num|
#   puts "num is #{num}"
# end

# puts num



creatures = ["unicorn", "hippogriff", "bowtruckle"]
hero = "Luna"

def battling_technique
  ["heroically", "clumsily", "cleverly"].sample
end

creatures.each do |c|
  puts "#{hero} battles #{c} #{battling_technique}"
end



new_creatures = ["dragon", "manticore"]
villian = "HeWhoWillNotBeNamed"
hero = "meh"

new_creatures.each do |villian|
  hero = "Neville"
  puts "this time the villian is #{villian} and the hero is #{hero}"
end

puts "the villian is #{villian}"
puts "the hero is #{hero}"