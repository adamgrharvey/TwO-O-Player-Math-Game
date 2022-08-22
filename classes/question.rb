class Question
  attr_accessor :q1, :q2, :answer
  def initialize
    prng1 = Random.new
    prng2 = Random.new
    @q1 = prng1.rand(19) + 1
    @q2 = prng2.rand(19) + 1
    @answer = @q1 + @q2
  end

end