require './lib/person'
require 'pry'


class Banks
  attr_reader :name 
  attr_accessor :accounts, :total_cash
  
  def initialize(name)
    @name              = name
    @accounts          = []
    @total_cash = 0
    "#{name} has been created"
  end

  def open_account(person)
    accounts << person
    "An account has been opened for #{person.name} with #{@name}."
  end

  def deposit(person, amount)
    if person.galleons >= amount
      person.deposited += amount
      person.galleons -= amount
      self.total_cash += amount
      "#{amount} galleons have been deposited into #{person.name}'s #{@name} account. Balance: #{person.deposited} Cash: #{person.galleons}"
    else
      "#{person.name} does not have enough cash to perform this deposit"
    end
  end

  def withdrawal(person, amount)
    if person.deposited >= amount && self.total_investments >= amount
      person.deposited -= amount
      person.galleons += amount
      self.total_cash -= amount
      "#{person.name} has withdrawn #{amount} galleons. Balance: #{person.deposited} Cash: #{person.galleons}"
    else
      "Insufficient funds."
    end
  end

  def transfer(person, bank, amount)
    #if self.accounts.contains?(person)
      if self.total_cash >= amount && person.deposited >= amount
        bank.total_cash += amount
        self.total_cash -= amount
        "#{person.name} has transferred #{amount} from #{self.name} to #{bank.name}"
      else
        "Insufficient funds."
      end
    #else
      #"#{person} does not have an account with #{self}"
    #end
  end
end

person1 = Person.new("Minerva", 1000)
person2 = Person.new("Luna", 500)
chase = Banks.new("JP Morgan Chase")
wells_fargo = Banks.new("Wells Fargo")
chase.open_account(person1)
chase.open_account(person2)
wells_fargo.open_account(person1)
chase.deposit(person1, 750)
wells_fargo.deposit(person1, 250)

binding.pry
""