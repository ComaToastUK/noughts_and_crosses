require 'cell'

class Board

attr_accessor :grid

  def initialize(default_board=create_grid)
    @grid = default_board
  end

  def create_grid
    Array.new(3) { Array.new(3) { Cell.new } }
  end

end
