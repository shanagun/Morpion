class Show 
  attr_accessor :board

  def show_board(board)
    puts " " * 4 + "1" + " " * 3 + "2" + " " * 3 + "3" 
    puts "-" * 15
    puts "A | " + board.array_boardcase[0].board_symbol + " | " + board.array_boardcase[1].board_symbol + " | " + board.array_boardcase[2].board_symbol + " |"
    puts "-" * 15
    puts "B | " + board.array_boardcase[3].board_symbol + " | " + board.array_boardcase[4].board_symbol + " | " + board.array_boardcase[5].board_symbol + " |"
    puts "-" * 15
    puts "C | " + board.array_boardcase[6].board_symbol + " | " + board.array_boardcase[7].board_symbol + " | " + board.array_boardcase[8].board_symbol + " |"
    puts "-" * 15
  end

end