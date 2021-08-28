class RPS
  CHOICES = ["rock", "paper", "scissors"]

  def initialize
    @player = ''
    @cpu = ''
  end

  def player_choice
    @player = gets.chomp.downcase
    unless CHOICES.include? @player
      puts "incorrect input.\nPlease enter rock, paper or scissors."
      return player_choice
    end
    puts "The player throws #{@player}!"
  end

  def cpu_choice
    @cpu = CHOICES.sample
    puts "The computer chooses #{@cpu}!"
  end

  def play
    puts "Lets play a game of Rock-Paper-Scissors!"
    puts "READYY??\nRock...Paper...Scissors!!"
    print ">"
    player_choice
    cpu_choice
    check_result
    play_again
  end

  def check_result
    if @player == "rock" && @cpu == "paper" || @player == "paper" && @cpu == "scissors" || @player == "scissors" && @cpu == "paper"
      puts "You win!\nThe CPU loses."
    elsif @player == "rock" && @cpu == "rock" || @player == "paper" && @cpu == "paper" || @player == "scissors" && @cpu == "scissors"
      puts "Its a tie!!"
    else
      puts "You lose...\nThe CPU wins."
    end
  end

  def play_again
    puts "Play again? (y/n):"
    print ">"
    case (gets.chomp)
    when 'y'
      play
    when 'n'
      puts "Goodbye!"
      exit
    else
      puts "input \"y\" for yes and \"n\" for no."
      play_again
    end
  end
end

# create a method that checks who won/lost
#   def results
#     if player_choice == @cpu_choice
#       puts "The round's a tie!"
#     elsif player_choice == "rock" && @cpu_choice == "scissors"
#       puts "you win the round!"
#     elsif player_choice == "rock" && @cpu_choice == "paper"
#       puts "you lose the round!"
#     elsif player_choice == "paper" && @cpu_choice == "rock"
#       puts "you win the round!"
#     elsif player_choice == "paper" && @cpu_choice == "scissors"
#       puts "you lose the round!"
#     elsif player_choice == "scissors" && @cpu_choice == "paper"
#       puts "you win the round!"
#     elsif player_choice == "scissors" && @cpu_choice == "rock"
#       puts "you lose the round!"
#     else
#       puts "wrong input!"
#     end
#   end
# end

game = RPS.new
puts game.play
