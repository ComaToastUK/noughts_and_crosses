class Printer
  def turn_prompt(current_player)
    "#{current_player} please enter a number from 1 to 9"
  end

  def winner_message(current_player)
    "#{current_player} wins!"
  end

  def draw_message
    "It's a draw!"
  end

  def print_board
    puts  "      _ _ _ _ _ _ "
    puts  " 1   |_1_|_2_|_3_|"
    puts  " 2   |_4_|_5_|_6_|"
    puts  " 3   |_7_|_8_|_9_|"
  end

end
