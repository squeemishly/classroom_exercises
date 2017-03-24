require 'minitest/autorun'
require 'minitest/pride'
require './lib/banks'
require './lib/person'

class BanksTest < Minitest::Test

  def test_theres_a_bank
    chase = Banks.new("JP Morgan Chase")
    assert_instance_of Banks, chase
  end

  def test_people_can_open_accounts
    chase = Banks.new("JP Morgan Chase")
    person1 = Person.new("Minerva", 1000)
    #assert_equal ??? what? what can I test here?!
  end

  def test_people_can_make_deposits
    chase = Banks.new("JP Morgan Chase")
    person1 = Person.new("Minerva", 1000)
    assert_equal "things", chase.deposit(person1, 750)
  end
end