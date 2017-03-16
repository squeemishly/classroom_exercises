require 'pry'

class Fridge
  attr_reader :brand, :temp, :plugged_in, :contents
  attr_accessor :color

  def initialize(brand, color, temp, plugged_in, contents)
    @brand      = brand.upcase  #new instance variable. named the same thing as the arg.
    @color      = color
    @temp       = temp
    @plugged_in = plugged_in
    @contents   = contents
  end
  
  def temperature_in_celcius
    (temp - 32)* 5.0/9.0
  end

  def add_item(new_item)
    contents << new_item
  end

  #under the hood attr_writer
  #def color=(new_color)
  # @color = new_color
  #end

  #under the hood for attr_reader
  #def color
  # @color
  #end
  
end

binding.pry
""

# attributes people share
#height, width, weight, race
#religion, sexual orientation, class, IQ, political affiliation
#location, age, DOB
#preferences? (e.g. musical)

class Person 
  attr_reader :height, :age, :weight, :race, :location, :sexual_orientation

  def initialize(height, age, weight, race, location, sexual_orientation)
    @height             = height
    @age                = age
    @weight             = weight
    @race               = race
    @location           = location
    @sexual_orientation = sexual_orientation
  end

  
  binding.pry
  ""
end
