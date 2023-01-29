class Question
  attr_reader :num1, :num1, :answer, :question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
    @question = "What is #{@num1} + #{@num2}?"
  end

end