require 'pry'

################################
#
# =>          ZIP
#
################################

class ChocoButter
  attr_reader :chocolate, :peanut_butter

  def initialize
    @chocolate     = [ "Ritual",
                      "Chuao",
                      "Chocolove",
                      "Scharffen Berger"]
    @peanut_butter = [ "Peter Pan",
                      "Skippy",
                      "Justin's",
                      "Smucker's",
                      "Crazy Richard's"]
  end

  def zippy
    chocolate.zip(peanut_butter)
  end

  def messy
    zippy.each do |mess|
      puts "You got your #{mess[0]} in my #{mess[1]}"
    end
  end
end

# ChocoButter.new.messy


class PotterHouses
  attr_reader :people, :houses

  def initialize
    @people = ["Hannah",
          "Penelope",
          "Rabastan",
          "Neville",
          "Tonks",
          "Seamus"]

    @houses = ["Hufflepuff",
          "Ravenclaw",
          "Slytherin",
          "Gryffindor",
          "Hufflepuff",
          "Gryffindor"]
  end

  def zippy
    people.zip(houses)
  end

  def whos_house
    zippy.each do |person|
      puts "#{person[0]} is in #{person[1]}"
    end
  end

end

# PotterHouases.new.whos_house


################################
#
# =>        GROUP_BY
#
################################

class AnimalTypes
  attr_reader :array

  def initialize
    @array = ["aardvark", "art", "airplane", "boy", "burp", "boot", "green", "goop", "super"]
  end

  def sorting_animals
    p array.group_by {|animal| animal[0]}
  end

end

# AnimalTypes.new.sorting_animals


################################
#
#         REDUCE/INJECT
#
################################

array = ['squee', 'czar', 'menace', 'adris', 'penelope', 'chocolate']

p array.reduce('') {|a, name| a + name[0]}

p 'supercalifragilisticexpialidocious'.split('').reduce(0) {|a, letter| a+=1 }

array = (1..10).to_a
answer = array.reduce(0) do |a, num|
  if num.even?
    a + num
  else
    a
  end
end

p answer
