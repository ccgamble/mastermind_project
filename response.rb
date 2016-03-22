module Response


  def welcome
    puts "Welcome to MASTERMIND\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions
    puts "Try to guess the pattern, with the correct colors in the right order, in the shortest amount of time possible to become a MASTER"
  end

  def start
    puts "I have generated a beginner sequence with four  made up of: r(ed),\ng(reen), b(lue), and y(ellow). Use (q)uit at any time to end the game.\nWhat's your guess?"
  end

  def replay
    puts "Do you want to (p)lay again or (q)uit?"
  end

  def win(sequence)
    print "Congratulations! You guessed the sequence '#{sequence}' "
  end

  def success(guess, elements, position)
    puts "'#{guess}' has #{elements} of the correct elements with #{position} in the correct position"
  end

  def cheat(sequence)
    puts "The correct sequence is: '#{sequence}'"
  end

  def quit
    "You have chosen to quit MASTERMIND."
  end

  def bad_input
    puts "Sorry, I don't understand - please try again."
  end

  def too_long
    puts "The sequence you entered is too long!"
  end

  def too_short
    puts "The sequence you entered is too short!"
  end


end
