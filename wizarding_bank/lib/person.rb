require 'pry'

class Person
  attr_reader :name
  attr_accessor :deposited, :galleons

  def initialize(name, galleons)
    @name       = name
    @galleons   = galleons
    @deposited  = 0
    puts "#{name} has been created with #{galleons} galleons in cash"
  end
end