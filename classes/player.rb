class Player
  attr_accessor :name, :lives, :max_lives, :answers

  def initialize(name)
    @name = name
    @lives = 3
    @max_lives = @lives
    @questions = []
    @answers = []
  end

  def remove_life
    @lives -= 1
  end

  def add_question(val1, val2)
    @questions.push([val1, val2])
  end

  def add_answer(ans)
    @answers.push(ans);
  end



end
