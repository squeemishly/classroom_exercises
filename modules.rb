# #########################
# =>      namespace
###########################

# require 'pry'
#
# module Car
#   class AWD
#     def start
#       puts "Engine on!"
#     end
#
#     def drive
#       puts "All wheels go!"
#     end
#   end
#
#   class RWD
#     def start
#       puts "Engine on!"
#     end
#
#     def drive
#       puts "Rear wheels go!"
#     end
#   end
# end
#
# pickup = Car::AWD.new
# volvo = Car::RWD.new
#
# binding.pry
# ""



#################################
# =>        mixin
#################################
require 'pry'

# module OnlineOrder
#   def confirmation(thing)
#     puts "You got #{thing}."
#   end
#
#   def review
#     puts "Please rate your order within 30 days."
#   end
# end
#
# class Grubhub
#   include OnlineOrder
#
#   def delivery
#     puts "Your food will arrive in 45-60 minutes."
#   end
# end
#
# class Amazon
#   include OnlineOrder
#
#   def delivery
#     puts "Your order will arrive in 2 business days."
#   end
# end
#
# Amazon.new.review

module HasEngine
  def start
    puts "Engine on!"
  end

  def stop
    puts "Engine off!"
  end
end

module HasAC
  def turn_on_AC
    puts "Chilly air coming your way"
  end

  def turn_off_AC
    puts "The temp is fine in here"
  end
end

class Camry
  include HasEngine, HasAC

  def drive
    puts "Back wheels go!"
  end
end

class Jeep
  include HasEngine, HasAC

  def drive
    puts "All wheels go!"
  end
end

binding.pry
""
