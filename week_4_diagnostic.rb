#######################################
#
#               MODULES
#
#######################################

module Doughy
  def has_carbs?
    true
  end
end

class Pizza
  include Doughy
  def tasty?
    true
  end
end

class ChicagoStyle < Pizza #because we included Doughy in the parent ("pizza"), we don't need to include it in the subclass
  def pan?
    true
  end
end



pizza = ChicagoStyle.new
puts pizza.pan?
puts pizza.tasty?
puts pizza.has_carbs?


#######################################
#
#              REFACTORING
#
#######################################

class Encryptor
  def date_offset
    date = Time.now.strftime("%d%m%y").to_i
    date_squared = date ** 2
    last_four_digits = date_squared.to_s[-4..-1]
    [last_four_digits[-4].to_i,
    last_four_digits[-3].to_i,
    last_four_digits[-2].to_i,
    last_four_digits[-1].to_i]
  end
end

Encryptor.new.date_offset

######### VERSUS ########

class Encryptor
  def split_date
    date_squared.to_s[-4..-1].chars
  end

  def date
    Time.now.strftime("%d%m%y").to_i
  end

  def date_squared
    date ** 2
  end

  def date_offset
    split_date.map! { |num| num.to_i }
  end
end

Encryptor.new.date_offset
