class Game 
  attr_accessor :array_players , :board, :status, :current_player

  def initialize
    @player1 = Player.new(@name, "X")
    @player2 = Player.new(@name, "O")
    @array_players = [@player1, @player2]
    @status = 'en cours'
    @board = Board.new
    system "clear"
    @player1.show_state
    @player2.show_state
    Show.new.show_board(@board)
  end

  def turn
    i=0
    while @status == 'en cours' && i<9
      @current_player = @array_players[i%2] # jouer alternativement index 0 ou 1
      @board.play_turn(@board, @current_player)
      
      Show.new.show_board(@board)
      # vérifier gagnant
      if @board.victory?(@board)
        @status = 'winner'
        break
      end

      i+=1 # compteur de tour
    end
  end

  def game_end
    if @status == 'en cours'
      puts "Match nul"
    elsif @status == 'winner'
      puts "Bravo #{@current_player.name}, t'as gagné"
    end
  end  

end