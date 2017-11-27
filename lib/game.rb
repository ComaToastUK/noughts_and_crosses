require_relative 'board'
require_relative 'player'
require_relative 'cell'

class Game
  attr_accessor :board, :current_player, :other_player, :players

  def initialize(players)
    @players = players
    @printer = Printer.new
    @board = Board.new
    @current_player = players.first
    @other_player = players.last
  end

  def change_turn
    @current_player, @other_player = @other_player, @current_player
  end

  def cell_value(x, y, value)
    cell_selector(x, y).value = value
  end

  def cell_selector(x, y)
    @board.grid[x][y]
  end

  def your_turn
    @printer.turn_prompt(@current_player.name)
  end

  def get_move(_player_move = gets.chomp)
    player_move_to_coordinate(_player_move)
  end

  def game_over
    return :winner if winner?
    return :draw   if draw?
    false
  end

  def game_over_message
    if game_over == :winner
      @printer.winner_message(@current_player)
    elsif game_over == :draw
      @printer.draw_message
    end
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
    @board.grid.flatten.map(&:value).none_empty?
  end

  private

  def player_move_to_coordinate(_player_move)
    coord_mapping = {
      '1' => [0, 0],
      '2' => [1, 0],
      '3' => [2, 0],
      '4' => [0, 1],
      '5' => [1, 1],
      '6' => [2, 1],
      '7' => [0, 2],
      '8' => [1, 2],
      '9' => [2, 2]
    }
    coord_mapping[_player_move]
  end

  def winning_positions
    @board.grid + @board.grid.transpose + diagonal_positions
  end

  def winning_position_values(winning_position)
    winning_position.map(&:value)
  end

  def diagonal_positions
    [[cell_selector(0, 0), cell_selector(1, 1), cell_selector(2, 2)],
     [cell_selector(0, 2), cell_selector(1, 1), cell_selector(2, 0)]]
  end
end
