class MathGame

  def initialize(player1, player2) 
    @player1 = player1
    @player2 = player2
  end

  def play_game(player1, player2)
  
    current_player = player1
    winner = nil

    loop do
      play_turn(current_player)
      winner = check_winner(player1, player2)

      if winner != nil
        end_game(winner)
        break
      else
        print_score(player1, player2)
        puts "New Turn"
        current_player = change_turn(player1, player2, current_player)
      end
    end
  end

  def play_turn(current_player)
    newQuestion = Question.new
    puts "#{current_player.name}: #{newQuestion.question}"
    answer = gets.chomp.to_i
    check_answer(newQuestion.answer, answer, current_player)
  end

  def check_answer(right_answer, player_answer, current_player)
    if right_answer == player_answer
      puts "Right answer!"
    else
      puts "Wrong answer"
      current_player.lose_life
    end 
  end

  def change_turn(player1, player2, current_player)
    if (current_player == player1)
      player2
    elsif (current_player == player2)
      player1
    end
  end

  def print_score(player1, player2)
    puts "#{player1.name}: #{player1.lives}/ 3 vs #{player2.name}: #{player2.lives} / 3"
  end

  def check_winner(player1, player2)
    if player1.lives == 0
      player2
    elsif player2.lives == 0
      player1
    end
  end

  def end_game(winner)
    puts "#{winner.name} wins with a score of #{winner.lives} / 3"
  end 

end