class Application
  attr_accessor :player1, :player2, :game

  def initialize
    @game = Game.new
    # initialisation d'une partie
    while @game.status == 'en cours'
      @game.turn
      # tour des joueurs
      @game.game_end
      # Message de fin de jeu
    end

  end

end