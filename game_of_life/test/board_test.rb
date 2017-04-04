require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test
  def test_it_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_it_makes_a_grid
    board = Board.new
    assert_equal [[],[],[],[],[],[],[],[],[],[]], board.add_rows(10)
  end

  def test_it_makes_columns
    board = Board.new
    board.add_rows(10)
    assert_equal , board.add_columns(2)
end
