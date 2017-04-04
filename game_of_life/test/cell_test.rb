require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/cell'

class CellTest < Minitest::Test
  def test_it_exists
    cell = Cell.new
    assert_instance_of Cell, cell
  end

  def test_it_creates_a_cell
    cell = Cell.new
    assert_equal "", cell.value
  end
end
