class MathGame

  def initialize(player1, player2) 
    @player1 = player1
    @player2 = player2
  end

  def play_game(player1, player2)
  
    current_player = player1
    winner = nil

  # while both players lives > 0, run the game loop
  # how to create a new question every round
    # create instance of question class, print question variable

    #if winner equals nil, call play turn
    # else if winner equals player, call end game
    loop do
      play_turn(current_player)
      winner = check_winner(player1, player2)

      if winner != nil
        end_game(winner)
        break
      else
        #do something
        print_score(player1, player2)
        puts "New Turn"
        current_player = change_turn(player1, player2, current_player)
      end
    end
    #newQuestion.check_answer(answer)
  # how to toggle between players
    #
  # how to check question answer for comparison
    # question class - isCorrectAnswer - if false - lose life
  # how to find and store winner
    # in player class - after check question, check lives - call lives & function that checks life counts for each player 
  # play first then check lives
  # at end of playGame, call play game - if p1 & p2 lives > 0 call playgame
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

######


class Player
  attr_reader :name, :lives

  TOTAL_LIVES = 3

  def initialize(name)
    @name = name
    @lives = TOTAL_LIVES
  end

  def lose_life
    @lives -= 1
  end 

end

######

class Question
  attr_reader :num1, :num1, :answer, :question

  # num1 = rand(1..20)
  # num2 = rand(1..20)
  # question = "What is #{num1} + #{num2}?" # can change to function askQuestion (prints q)
  # answer = @num1 + @num2

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
    @question = "What is #{@num1} + #{@num2}?"
  end

  # def prompt
  #   "What is #{@num1} + #{@num2}?"
  # end

  # def check_answer(player_answer)
  #   if 
  #     player_answer == @answer 
  #     puts true
  #   else 
  #     puts false
  #   end
  # end

end

Vanessa = Player.new("Vanessa")
Sam = Player.new("Sam")
newGame = MathGame.new(Vanessa, Sam)
newGame.play_game(Vanessa, Sam)