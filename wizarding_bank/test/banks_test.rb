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
    assert_equal "750 galleons have been deposited into Minerva's JP Morgan Chase account. Balance: 750 Cash: 250", chase.deposit(person1, 750)
  end

  def test_people_cannot_deposit_more_than_they_have
    chase = Banks.new("JP Morgan Chase")
    person1 = Person.new("Minerva", 1000)
    assert_equal "Minerva does not have enough cash to perform this deposit", chase.deposit(person1, 5000)
  end

  def test_people_can_withdrawl_money
    chase = Banks.new("JP Morgan Chase")
    person1 = Person.new("Minerva", 1000)
    chase.deposit(person1, 500)
    assert_equal "Minerva has withdrawn 250 galleons. Balance: 250 Cash: 750", chase.withdrawal(person1, 250)
  end

  def test_people_cannot_withdrawal_more_than_they_have_invested
    chase = Banks.new("JP Morgan Chase")
    person1 = Person.new("Minerva", 1000)
    chase.deposit(person1, 500)
    assert_equal "Insufficient funds.", chase.withdrawal(person1, 50000)
  end

  def test_people_can_transfer_money_between_banks
    chase = Banks.new("JP Morgan Chase")
    wells_fargo = Banks.new("Wells Fargo")
    person1 = Person.new("Minerva", 1000)
    chase.deposit(person1, 500)
    wells_fargo.deposit(person1, 500)
    assert_equal "Minerva has transferred 250 from JP Morgan Chase to Wells Fargo", chase.transfer(person1, wells_fargo, 250)
  end

  def test_people_cannot_transfer_more_than_they_have_invested
    chase = Banks.new("JP Morgan Chase")
    wells_fargo = Banks.new("Wells Fargo")
    person1 = Person.new("Minerva", 1000)
    chase.deposit(person1, 500)
    wells_fargo.deposit(person1, 500)
    assert_equal "Insufficient funds.", chase.transfer(person1, wells_fargo, 25000)
  end

  def test_people_cannot_transfer_to_a_bank_they_do_not_have_an_account_with
    chase = Banks.new("JP Morgan Chase")
    wells_fargo = Banks.new("Wells Fargo")
    person1 = Person.new("Minerva", 1000)
    assert_equal "", chase.transfer(person1, wells_fargo, 500)
  end

end
