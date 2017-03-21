class Mather
  def initialize(num)
    @num = num
  end

  def calculate
    if @num == 0
      "that's a negative ghost rider, the pattern is full"
    else
      doubled = doubler(@num)
      squared = squarer(doubled)
      return squared
    end
  end

  def doubler(number)
    puts "I'm a doublin!"
    number * 2
  end

  def squarer(number)
    puts "I'm a squarin!"
    number * number
  end
end

mather = Mather.new(4)
puts mather.calculate