require 'pry'


###################################################################
#
#                             MAP/COLLECT
#
###################################################################
#
# returns the values as changet in the enumerable
#
###################################################################

def double_each
  numbers = [1,2,3,4,5]
  doubled = []
  numbers.each do |number|
    doubled << number * 2
  end
  doubled
end

def double_map
  numbers = [1,2,3,4,5]
  numbers.map do |number|
    number * 2
  end
end

def double_collect # collect is the same thing as map. why would we use this?
  numbers = [1,2,3,4,5]
  numbers.collect do |number|
    number * 2
    puts "Hello"  #if we add a puts, puts return value is nil, collect (or map) will return the last thing in the statement, so if
  end             #it's a puts, it will return nil in the array because we are iterating over the values in the array
end

# p double_each
# p double_map
# p double_collect

def internally_screaming
  people = ["Taylor Swift", "Carly Rae Jeppsen", "Justin Bieber"]

  people.map do |name|
    "#{name} is bad at music"
  end
  
end

# p internally_screaming


###################################################################
#
#                           FIND/DETECT
#
###################################################################
#
# Finds the first thing in the collection that meets a condition
#
###################################################################

def find_first_even_num_each
  numbers = [1,2,3,4,5]

  numbers.each do |num|
    if num.even?
      return num     # return breaks a loop. NEAT!
    end
  end
end

def find_first_even_num_find
  numbers = [1,2,3,4,5]

  numbers.find do |num|
    num.even?
  end
end

# p find_first_even_num_each
# p find_first_even_num_find

def find_long
  array = ["dog", "caterpillar", "bee" ]

  array.detect do |word|
    word.length > 3
  end
end

# p find_long


###################################################################
#
#                           FIND_ALL/SELECT
#
###################################################################
#
# Finds all the things in an array that meet a condition
#
###################################################################

def all_the_odds_each
  numbers = [1,2,3,4,5]
  odds = []                 #code-smell: when you look at this... you know there's a better way of doing it...

  numbers.each do |number|  #each will always return everything in the array
    if number.odd? 
      odds << number 
    end
  end
  odds
end


def all_the_odds_find_all
  numbers = [1,2,3,4,5]
  numbers.find_all do |number|  
    number.odd?
  end
end

# p all_the_odds_each
# p all_the_odds_find_all 

def named_t
  array = ["Taylor", "Francis", "Bella", "Tori", "Jay"]
  array.select do |name|
    name.start_with?("T")
  end
end

p named_t