require './players'
require './questions'
require 'colorize'

class Game
  def initialize(name1, name2)
    @p1 = Players.new(name1)
    @p2 = Players.new(name2)
    @current_player = nil
  end

  def toggle_player
    if @current_player == @p1
      @current_player = @p2
    else
      @current_player = @p1
    end
  end

  def run_game
    @p1.name = @p1.name.blue
    @p2.name = @p2.name.red
    puts "--------STARTING GAME----------"
    puts "...#{@p1.name} vs #{@p2.name}...READY...GO!"
    while @p1.score > 0 && @p2.score > 0 do
      self.toggle_player
      question = Questions.new
      ops = ['add', 'multiply', 'subtract', 'divide']
      puts "---------NEW TURN --------"
      puts "<<<Question for #{@current_player.name}>>>"
      question.generate_question(ops.sample)
      response = gets.chomp.to_i
      if response == question.answer
        puts "Great Job #{@current_player.name}!!"
      else
        puts "Hell nah! #{@current_player.name} - correct answer: #{question.answer}"
        @current_player.score -= 1
      end
      puts "#{@p1.name}: #{@p1.score} v #{@p2.name}: #{@p2.score}"
    end
    if @p1.score == 0
      puts "#{@p2.name} wins with a score of #{@p2.score}"
    end
    if @p2.score == 0
      puts "#{@p1.name} wins with a score of #{@p1.score}"
    end
    puts "--------END GAME----------"
  end
end


