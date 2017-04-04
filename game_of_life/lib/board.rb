require 'pry'
require './lib/cell'

class Board
  attr_reader :board_rows

  def initialize
    @board_rows = []
  end

  def add_rows(number)
    number.times do |num|
      @board_rows << ['_']
    end
  end

  def add_columns(number)
    columns = []
    number.times do |num|
      columns << board_rows
      puts ""
    end
    puts columns
  end
end

board = Board.new
board.add_rows(10)
board.add_columns(2)
binding.pry
""
