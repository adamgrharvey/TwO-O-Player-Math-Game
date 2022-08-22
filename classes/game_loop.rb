require './classes/question.rb'
require './classes/player.rb'

class Game_Loop
  def initialize()
    puts "Welcome!"
    print "First player name: "
    p1 = gets.chomp
    @player1 = Player.new(p1)
    print "Second player name: "
    p2 = gets.chomp
    @player2 = Player.new(p2)
    @curr_player = @player1
  end

  def play
    while (@player1.lives > 0 && @player2.lives > 0) do
      question = Question.new
      puts "----- NEW TURN -----"
      puts "#{@curr_player.name}: What does #{question.q1} plus #{question.q2} equal?"
      print "> "
      resp = gets.chomp.to_i
      check_answer(question, resp)
      print_score
    end
    final_score
  end

  def print_score
    puts "#{@player1.name}: #{@player1.lives}/#{@player1.max_lives} vs #{@player2.name}: #{@player2.lives}/#{@player2.max_lives}"
  end

  def final_score
   if @player1.lives == 0
    winner = @player2
   elsif 
    winner = @player1
   end
   puts "#{winner.name} wins! They answered #{winner.answers.length() - (winner.max_lives - winner.lives)} questions right! They had #{winner.lives}/#{winner.max_lives} lives left."
   puts "----- GAME OVER -----"
   puts "Good bye!"
  end

  def check_answer(question, given_answer)
    @curr_player.add_question(question.q1, question.q2)
    @curr_player.add_answer(given_answer)
   if question.answer == given_answer
    is_right
   elsif 
    is_wrong
   end
    
  end

  def is_right
    puts "Correct!"
   if @curr_player == @player1
    @curr_player = @player2
   elsif 
    @curr_player = @player1
   end
  end

  def is_wrong
    puts "Wrong!"
    @curr_player.remove_life
   if @curr_player == @player1
    @curr_player = @player2
   elsif 
    @curr_player = @player1
   end
  end
end