
class Question

  def new_question(player1, player2, current_player)
    num1 = rand(1..20)
    num2 = rand(1..20)
    correct_answer = num1 * num2
    puts "What does #{num1} times #{num2} equal?"
    player_answer = gets.chomp
    if (player_answer.to_i != correct_answer)
      puts "Wrong! Go back to the basics!"
      current_player.lives -= 1
    else
      puts "Correct!!"
    end
    puts "#{player1.name}: #{player1.lives} lives remaining - #{player2.name}: #{player2.lives} lives remaining \n"
  end

end