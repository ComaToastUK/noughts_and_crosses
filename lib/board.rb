require 'cell'

class Board

attr_accessor :grid

  def initialize(default_grid = create_grid)
    @grid = default_grid
  end

  def create_grid
    Array.new(3) { Array.new(3) { Cell.new } }
  end

  def cell_selector(x,y)
    @grid[y][x]
  end

end
