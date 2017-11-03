require_relative 'board'
require_relative 'player'

class Game

attr_accessor :board, :current_player, :other_player, :players

  def initialize(players)
      @players = players
      @board = Board.new
      @current_player = players.first
      @other_player = players.last
  end

  def change_turn
    @current_player, @other_player = @other_player, @current_player
  end

  def cell_value(x,y,value)
    cell_selector(x,y).value = value
  end

  def cell_selector(x,y)
    @board.grid[x][y]
  end

  def game_over
    return :winner if winner?
    return :draw   if draw?
    false
  end

  def random_player(players)
    players.shuffle
  end

  def winner?
    winning_positions.each do |position|
      next if winning_position_values(position).all_empty?
      return true if winning_position_values(position).all_same?
    end
    false
  end

  def draw?
    @board.grid.flatten.map { |cell| cell.value }.none_empty?
  end

  private

  def winning_positions
    @board.grid + @board.grid.transpose + diagonal_positions
  end

  def winning_position_values(winning_position)
    winning_position.map { |cell| cell.value }
  end

  def diagonal_positions
    [[cell_selector(0, 0), cell_selector(1, 1), cell_selector(2, 2)],
    [cell_selector(0, 2), cell_selector(1, 1), cell_selector(2, 0)]]
  end

end
