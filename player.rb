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