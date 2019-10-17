class Board
  attr_accessor :array_boardcase

	def initialize
		@A1 = BoardCase.new("A1", " ")
		@A2 = BoardCase.new("A2", " ")
		@A3 = BoardCase.new("A3", " ")
		@B1 = BoardCase.new("B1", " ")
		@B2 = BoardCase.new("B2", " ")
		@B3 = BoardCase.new("B3", " ")
		@C1 = BoardCase.new("C1", " ")
		@C2 = BoardCase.new("C2", " ")
		@C3 = BoardCase.new("C3", " ")
    @array_boardcase = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3]
  end

	def play_turn(board, current_player)

    input_ko = true
    
    while input_ko
      puts "#{current_player.name}, ton symbole est '#{current_player.player_symbol}', quelle case veux-tu jouer ? "
      case_to_play = gets.chomp.upcase
      system "clear"

      case case_to_play
      when "A1"
          if board.array_boardcase[0].board_symbol == " "
              board.array_boardcase[0].board_symbol  = current_player.player_symbol
              input_ko = false
          else
              puts "La case est indisponible, réessaye dans une autre case !"
          end
      when "A2"
          if board.array_boardcase[1].board_symbol == " "
              board.array_boardcase[1].board_symbol  = current_player.player_symbol
              input_ko = false
          else
              puts "La case est indisponible, réessaye dans une autre case !"
          end
      when "A3"
          if board.array_boardcase[2].board_symbol == " "
              board.array_boardcase[2].board_symbol  = current_player.player_symbol
              input_ko = false
          else
              puts "La case est indisponible, réessaye dans une autre case !"
          end
      when "B1"
          if board.array_boardcase[3].board_symbol == " "
              board.array_boardcase[3].board_symbol  = current_player.player_symbol
              input_ko = false
          else
              puts "La case est indisponible, réessaye dans une autre case !"
          end
      when "B2"
          if board.array_boardcase[4].board_symbol == " "
              board.array_boardcase[4].board_symbol  = current_player.player_symbol
              input_ko = false
          else
              puts "La case est indisponible, réessaye dans une autre case !"
          end
      when "B3"
          if board.array_boardcase[5].board_symbol == " "
              board.array_boardcase[5].board_symbol  = current_player.player_symbol
              input_ko = false
          else
              puts "La case est indisponible, réessaye dans une autre case !"
          end
      when "C1"
          if board.array_boardcase[6].board_symbol == " "
              board.array_boardcase[6].board_symbol  = current_player.player_symbol
              input_ko = false
          else
              puts "La case est indisponible, réessaye dans une autre case !"
          end
      when "C2"
          if board.array_boardcase[7].board_symbol == " "
              board.array_boardcase[7].board_symbol  = current_player.player_symbol
              input_ko = false
          else
              puts "La case est indisponible, réessaye dans une autre case !"
          end
      when "C3"
          if board.array_boardcase[8].board_symbol ==" "
              board.array_boardcase[8].board_symbol  = current_player.player_symbol
              input_ko = false
          else
              puts "La case est indisponible, réessaye dans une autre case !"
          end
      else 
          puts "erreur de case"
      end
    end
  end
  
  def victory?(board)
		
		# test combinaison horizontale
		# si cases sont identiques
		if board.array_boardcase[0].board_symbol == 'X' && board.array_boardcase[1].board_symbol == 'X' && board.array_boardcase[2].board_symbol == 'X'
			return true
		end
		if board.array_boardcase[0].board_symbol == 'O' && board.array_boardcase[1].board_symbol == 'O' && board.array_boardcase[2].board_symbol == 'O'
			return true
		end
		if board.array_boardcase[3].board_symbol == 'X' && board.array_boardcase[4].board_symbol == 'X' && board.array_boardcase[5].board_symbol == 'X'
			return true
		end
		if board.array_boardcase[3].board_symbol == 'O' && board.array_boardcase[4].board_symbol == 'O' && board.array_boardcase[5].board_symbol == 'O'
			return true
		end
		if board.array_boardcase[6].board_symbol == 'X' && board.array_boardcase[7].board_symbol == 'X' && board.array_boardcase[8].board_symbol == 'X'
			return true
		end
		if board.array_boardcase[6].board_symbol == 'O' && board.array_boardcase[7].board_symbol == 'O' && board.array_boardcase[8].board_symbol == 'O'
			return true
		end

		# test combinaison verticale
		# si cases sont identiques
		if board.array_boardcase[0].board_symbol == 'X' && board.array_boardcase[3].board_symbol == 'X' && board.array_boardcase[6].board_symbol == 'X'
			return true
		end
		if board.array_boardcase[0].board_symbol == 'O' && board.array_boardcase[3].board_symbol == 'O' && board.array_boardcase[6].board_symbol == 'O'
			return true
		end
		if board.array_boardcase[1].board_symbol == 'X' && board.array_boardcase[4].board_symbol == 'X' && board.array_boardcase[7].board_symbol == 'X'
			return true
		end
		if board.array_boardcase[1].board_symbol == 'O' && board.array_boardcase[4].board_symbol == 'O' && board.array_boardcase[7].board_symbol == 'O'
			return true
		end
		if board.array_boardcase[2].board_symbol == 'X' && board.array_boardcase[5].board_symbol == 'X' && board.array_boardcase[8].board_symbol == 'X'
			return true
		end
		if board.array_boardcase[2].board_symbol == 'O' && board.array_boardcase[5].board_symbol == 'O' && board.array_boardcase[8].board_symbol == 'O'
			return true
		end

		# test combinaison diagonale
		# si cases sont identiques
		if board.array_boardcase[0].board_symbol == 'X' && board.array_boardcase[4].board_symbol == 'X' && board.array_boardcase[8].board_symbol == 'X'
			return true
		end
		if board.array_boardcase[0].board_symbol == 'O' && board.array_boardcase[4].board_symbol == 'O' && board.array_boardcase[8].board_symbol == 'O'
			return true
		end
		if board.array_boardcase[2].board_symbol == 'X' && board.array_boardcase[4].board_symbol == 'X' && board.array_boardcase[6].board_symbol == 'X'
			return true
		end
		if board.array_boardcase[2].board_symbol == 'O' && board.array_boardcase[4].board_symbol == 'O' && board.array_boardcase[6].board_symbol == 'O'
			return true
		end

	end

end
