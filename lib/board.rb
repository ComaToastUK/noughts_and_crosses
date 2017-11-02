require 'cell'

class Board

attr_accessor :grid

  def initialize
    @grid = create_grid
  end

  def create_grid
    Array.new(3) { Array.new(3) { Cell.new } }
  end

end
