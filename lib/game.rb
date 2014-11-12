class Game < CommandLineApp

  def initialize(input, output)
    @input = input
    @output = output
  end

  def run
    puts "What sign would you like to throw?"
    puts "Choices are:\n  rock, paper, or scissors"
    user_input = gets #why no .chomp???

    if user_input != 'rock' && user_input != 'paper' && user_input != 'scissors'
      puts "not a valid throw!"
    else
      puts "You chose: #{user_input}"

    end
  end
end
