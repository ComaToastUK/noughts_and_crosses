require_relative 'cell'
require_relative 'board'

class Game

attr_accessor :board

  def initialize()
    @board = Board.new()
  end

  def cell_value(x,y,value)
    cell_selector(x,y).value = value
  end

  def cell_selector(x,y)
    board.grid[x][y]
  end

  def game_over
    return :winner if winner?
    return :draw   if draw?
    false
  end

  def winner?
    true
  end

  def draw?
    true
  end


end
