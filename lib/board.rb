require 'cell'

class Board

attr_accessor :grid

  def initialize(default_grid = create_grid)
    @grid = default_grid
  end

  def create_grid
    Array.new(3) { Array.new(3) { Cell.new } }
  end

  def cell_value(x,y,value)
    cell_selector(x,y).value = value
  end

  def cell_selector(x,y)
    @grid[x][y]
  end

end
