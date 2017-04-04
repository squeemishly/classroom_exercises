###########################################################
#
#                         MAX/MIN
#
##########################################################

numbers = [3,5,2,4,6,1]

def max(values)
  max_value = values.first
  values.each do |value|
    if value > max_value
      max_value = value
    end
  end
  max_value     #if we don't include max here, it will return the array. because each.
end

puts max(numbers)

puts numbers.max  #no block necessary. Just .max returns the same thing.
puts numbers.min


names = ["squee", "Lauren", "mason", "adam", "padraic", "ben jacobs"]
puts names.min
puts names.max


###########################################################
#
#                      MAX_BY/MIN_BY
#
##########################################################

class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

people = []
people << Person.new("squee", 34)
people << Person.new("Joel", 29)
people << Person.new("Charlie", 23)
people << Person.new("Deb", 50)
people << Person.new("Sam", 19)

def max_by(collection)
  max = collection.first

  collection.each do |person|
    if person.age > max.age
      max = person
    end
  end
  max
end

p max_by(people)

eldest = people.max_by do |person|
  person.age
end

p eldest

youngest = people.min_by do |person|
  person.age
end

p youngest


###########################################################
#
#                        SORT_BY
#
###########################################################

numbers = [3,5,2,4,6,1]
sorted = numbers.sort_by do |num|
  num
end

p sorted


sorted_people = people.sort_by do |person|
  person.age
end

p sorted_people


###########################################################
#
#                            ALL?
#
###########################################################

def all?(collection)
  over_21 = true
  collection.each do |person|
    if person.age < 21
      over_21 = false
    end
  end
  over_21
end

p all?(people)



over_21 = people.all? do |person|
  person.age > 21
end

p over_21
