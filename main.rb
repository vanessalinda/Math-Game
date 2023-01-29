require './player'
require './question'
require './mathgame'

Vanessa = Player.new("Vanessa")
Sam = Player.new("Sam")
newGame = MathGame.new(Vanessa, Sam)
newGame.play_game(Vanessa, Sam)