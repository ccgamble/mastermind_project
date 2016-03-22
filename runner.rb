require 'pry'
require 'time'
require_relative 'response'
require_relative 'mastermind'

class Runner
  include Response
  include Mastermind

  attr_reader :start_time, :sequence, :guess_count


  def initialize
    welcome
    loop do
      game_start
    end
  end

  def user_input
    print "> "
    input = gets.chomp.upcase
      if input[0] == "P"
        game_flow
      elsif input[0] == "I"
        instructions
      elsif input[0] == "Q"
        abort(quit)
      else
        bad_input
      end
      input
  end

  def game_start
    @sequence = sequence_gen
    @start_time = Time.now
    user_input
  end

  def sequence_gen
    colors = %w{R G B Y}
    4.times.map do |color|
      colors.sample
    end.join
  end


  def game_flow
    @guess_count = 0
    start
    gameplay
    replay
  end

  def gameplay
    loop do
      guess = user_input
      @guess_count += 1
      if guess[0] == 'C'
        cheat(sequence)
      elsif guess.length != 4
        invalid_length(guess)
      elsif guess == sequence
        win_stats(guess)
        break
      else
        guess_eval(guess)
      end
    end
  end

  def invalid_length(guess)
    if guess.length > 4
      too_long
    elsif guess.length < 4
      too_short
    end
  end

end

if __FILE__ == $0

Runner.new

end
