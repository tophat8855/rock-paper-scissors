class Game < CommandLineApp

  def initialize(input, output)
    @input = input
    @output = output
    @choices = ["rock", "Spock", "paper", "lizard", "scissors"]
  end

  def run
    puts "What sign would you like to throw?"
    puts "Choices are:\n  rock, paper, scissors, lizard, or Spock"
    user_input = gets.chomp #why no .chomp???

    if @choices.include?(user_input)
      print_user_throw(user_input)
    else
      puts "not a valid throw!"
    end

    computer_choice = @choices.sample
    print_computer_throw(computer_choice)

    computer_number = @choices.find_index(computer_choice).to_i

    player_number = @choices.find_index(user_input).to_i

    outcome = (player_number - computer_number) %5

    if outcome == 0
      puts "Player and computer tie!"
    elsif outcome == 1 || outcome == 2
      puts "Player wins!"
    elsif outcome == 3 || outcome == 4
      puts "Computer wins!"
    end

  end

  def print_user_throw(input)
    puts "You chose: #{input}"
  end

  def print_computer_throw(input)
    puts "Computer chose: #{input}"
  end

end
