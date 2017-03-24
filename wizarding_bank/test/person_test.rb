require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'

class PersonTest < Minitest::Test
  def test_person_exists_yo
    person1 = Person.new("Harry", 1000000)
    assert_instance_of Person, person1
  end

  def test_person_has_a_name
    person1 = Person.new("Minerva", 1000)
    assert_equal "Minerva", person1.name
  end

  
end