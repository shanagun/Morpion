class Player 
  attr_accessor :name, :player_symbol
  
  def initialize(name, player_symbol)
    @name = gets_name
    @player_symbol = player_symbol 
  end

  def gets_name
    puts "Quel est ton prénom ? :"
    @name = gets.chomp
  end

  def show_state
    puts "Le joueur #{@name} joue avec le symbole '#{@player_symbol}'"
  end

end