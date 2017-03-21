require 'minitest/autorun'
require 'minitest/pride'
require './lib/banana_stand'

class BananaStandTest < Minitest::Test
  def test_it_exists
    stand = BananaStand.new
    assert_instance_of BananaStand, stand
  end
  
  def test_should_be_closed_when_created
    stand = BananaStand.new
    assert_equal false, stand.open?
    refute stand.open?
  end

end

