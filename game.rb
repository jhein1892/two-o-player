class Game
  def initialize
    puts "Welcome to the Math Game! \n"
  end

  def new_players
    puts "enter player one's name:"
    name1 = gets.chomp
    @player1 = Player.new(name1)

    puts "enter player two's name:"
    name2 = gets.chomp
    @player2 = Player.new(name2)

    puts "#{name1} and #{name2} play maths"
  end

  def player_turn
    play = true

    while play do
      if @player1.turn == true
        current_player = @player1
        other_player = @player2
      else 
        current_player = @player2
        other_player = @player1
      end

      puts "---- #{current_player.name}'s turn ----"
      q = Question.new
      q.new_question(@player1, @player2, current_player)
      current_player.turn = false
      other_player.turn = true

      if current_player.lives == 0
        puts "\n#{other_player.name} wins with #{other_player.lives} lives remaining!"
        puts "----GAME OVER----"
        play = false
      end

    end
  end


  def start
    new_players
    player_turn
  end


end